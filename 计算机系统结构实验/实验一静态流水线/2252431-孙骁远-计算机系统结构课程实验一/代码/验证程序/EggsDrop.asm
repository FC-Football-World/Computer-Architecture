.data
    totalFloors:          .word 20                # 楼层数
    fallResistance:       .word 4                 # 鸡蛋的耐摔值
    result:               .word 0                 # 最终结果
    count:                .word 0                 # 总次数
    totalEggs:            .word 0                 # 摔碎的总鸡蛋数
    isBroken:             .word 0                 # 最后一个鸡蛋是否破碎（1破碎）
    totalUpFloors:        .word 0                 # 总上楼层数
    totalDownFloors:      .word 0                 # 总下楼层数
    newline:              .asciiz "\n"            # 换行符
    totalDropsMsg:        .asciiz "Total drops: "  # 总摔落次数提示
    totalBrokenEggsMsg:   .asciiz ", Total broken eggs: " # 总摔碎鸡蛋数提示
    lastEggBrokenMsg:     .asciiz ", Last egg broken status: " # 最后一个鸡蛋破碎状态提示
    costMaterialMsg:      .asciiz "\nCost in material scarcity period: " # 物质匮乏时期的成本提示
    costLaborMsg:         .asciiz "\nCost in labor cost increase period: " # 人力成本增长时期的成本提示

.text
main:
    # 初始化
    li $t0, 20                # totalFloors
    sw $t0, totalFloors
    li $t0, 2                 # fallResistance
    sw $t0, fallResistance
    li $t0, 0                 # result
    sw $t0, result
    li $t0, 0                 # count
    sw $t0, count
    li $t0, 0                 # totalEggs
    sw $t0, totalEggs
    li $t0, 0                 # isBroken
    sw $t0, isBroken
    li $t0, 0                 # totalUpFloors
    sw $t0, totalUpFloors
    li $t0, 0                 # totalDownFloors
    sw $t0, totalDownFloors

    # 设置高低层
    li $t1, 20                # high = totalFloors
    li $t2, 1                 # low = 1
    li $t3, 0                 # stumbFloor

while_loop:
    # count++
    lw $t0, count
    addi $t0, $t0, 1
    sw $t0, count

    # stumbFloor = (high + low) / 2
    add $t4, $t1, $t2        # t4 = high + low
    srl $t3, $t4, 1          # stumbFloor = (high + low) / 2

    # if (stumbFloor <= fallResistance)
    lw $t5, fallResistance
    ble $t3, $t5, not_broken

    # broken:
    # 记录鸡蛋破碎
    lw $t0, totalEggs
    addi $t0, $t0, 1
    sw $t0, totalEggs
    li $t0, 1
    sw $t0, isBroken

    # totalDownFloors += (high - stumbFloor)
    lw $t0, totalDownFloors
    sub $t6, $t1, $t3        # t6 = high - stumbFloor
    add $t0, $t0, $t6
    sw $t0, totalDownFloors

    # 更新高层
    addi $t1, $t3, -1        # high = stumbFloor - 1

    # 检查是否继续循环
    bgt $t1, $t2, while_loop
    j handle_last

not_broken:
    # isBroken = 0
    li $t0, 0
    sw $t0, isBroken

    # totalUpFloors += (stumbFloor - low)
    lw $t0, totalUpFloors
    sub $t6, $t3, $t2        # t6 = stumbFloor - low
    add $t0, $t0, $t6
    sw $t0, totalUpFloors

    # low = stumbFloor
    move $t2, $t3

    # Check if high == low
    beq $t1, $t2, handle_last

    # Continue loop
    j while_loop

handle_last:
    # 处理最后一次的情况
    lw $t1, totalFloors
    beq $t1, $t2, last_check
    count_last:
    lw $t0, count
    addi $t0, $t0, 1
    sw $t0, count

last_check:
    if_high:
    lw $t1, fallResistance
    ble $t2, $t1, last_no_broken

    # 最后一次破碎
    lw $t0, totalEggs
    addi $t0, $t0, 1
    sw $t0, totalEggs
    li $t0, 1
    sw $t0, isBroken
    move $t3, $t2              # result = low
    j end_last

last_no_broken:
    li $t0, 0
    sw $t0, isBroken
    move $t3, $t2              # result = low

end_last:
    # 成本计算
    # p1_materialScarcity = 2, p2_materialScarcity = 1, p3_materialScarcity = 4
    # p1_laborCostIncrease = 4, p2_laborCostIncrease = 1, p3_laborCostIncrease = 2
    li $t0, 2                 # p1_materialScarcity
    lw $t1, totalUpFloors
    mul $t1, $t1, $t0         # totalUpFloors * p1_materialScarcity

    li $t0, 1                 # p2_materialScarcity
    lw $t2, totalDownFloors
    mul $t2, $t2, $t0         # totalDownFloors * p2_materialScarcity

    lw $t3, totalEggs
    li $t0, 4                 # p3_materialScarcity
    mul $t3, $t3, $t0         # totalEggs * p3_materialScarcity

    # material cost
    add $t1, $t1, $t2
    add $t1, $t1, $t3         # cost_materialScarcity

    # labor cost calculation
    li $t0, 4                 # p1_laborCostIncrease
    lw $t2, totalUpFloors
    mul $t2, $t2, $t0         # totalUpFloors * p1_laborCostIncrease

    li $t0, 1                 # p2_laborCostIncrease
    lw $t3, totalDownFloors
    mul $t3, $t3, $t0         # totalDownFloors * p2_laborCostIncrease

    lw $t4, totalEggs
    li $t0, 2                 # p3_laborCostIncrease
    mul $t4, $t4, $t0         # totalEggs * p3_laborCostIncrease

    # labor cost
    add $t2, $t2, $t3
    add $t2, $t2, $t4         # cost_laborCostIncrease

    # 输出结果
    # 输出总摔落次数
    li $v0, 4                    # syscall for print_string
    la $a0, totalDropsMsg
    syscall

    li $v0, 1                    # syscall for print_int
    lw $a0, count
    syscall

    # 输出总摔碎鸡蛋数
    li $v0, 4                    # syscall for print_string
    la $a0, totalBrokenEggsMsg
    syscall

    li $v0, 1                    # syscall for print_int
    lw $a0, totalEggs
    syscall

    # 输出最后一个鸡蛋破碎状态
    li $v0, 4                    # syscall for print_string
    la $a0, lastEggBrokenMsg
    syscall

    li $v0, 1                    # syscall for print_int
    lw $a0, isBroken
    syscall

    # 输出换行
    li $v0, 4                    # syscall for print_string
    la $a0, newline
    syscall

    # 输出物质匮乏时期的总成本
    li $v0, 4                    # syscall for print_string
    la $a0, costMaterialMsg
    syscall

    li $v0, 1                    # syscall for print_int
    move $a0, $t1                # cost_materialScarcity
    syscall

    # 输出换行
    li $v0, 4                    # syscall for print_string
    la $a0, newline
    syscall

    # 输出人力成本增长时期的总成本
    li $v0, 4                    # syscall for print_string
    la $a0, costLaborMsg
    syscall

    li $v0, 1                    # syscall for print_int
    move $a0, $t2                # cost_laborCostIncrease
    syscall

    # 输出换行
    li $v0, 4                    # syscall for print_string
    la $a0, newline
    syscall

    # 结束程序
    li $v0, 10                  # syscall for exit
    syscall
