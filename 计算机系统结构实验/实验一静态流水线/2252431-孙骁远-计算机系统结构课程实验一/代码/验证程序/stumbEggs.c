#include <stdio.h>
#include <stdlib.h>

int main() {
	int totalFloors = 20; // 楼层数
	int fallResistance = 2; // 鸡蛋的耐摔值
	int result = 0; // 最终结果
	int count = 0; // 总次数
	int totalEggs = 0; // 摔碎的总鸡蛋数
	int isBroken = 0; // 最后一个鸡蛋是否破碎（1破碎）

	int high = totalFloors, low = 1;
	int stumbFloor = 0;

	int totalUpFloors = 0; // 总上楼层数
	int totalDownFloors = 0; // 总下楼层数

	while (1) {
		count++;
		stumbFloor = (high + low) / 2;

		if (stumbFloor <= fallResistance) {
			isBroken = 0;
			totalUpFloors += (stumbFloor - low); // 记录上楼层数
			low = stumbFloor;
		}
		else {
			isBroken = 1;
			totalEggs++;
			totalDownFloors += (high - stumbFloor); // 记录下楼层数
			high = stumbFloor - 1;
		}

		if ((high - low) < 2) {
			break;
		}
	}

	count++;
	if (high <= fallResistance) {
		isBroken = 0;
		result = high;
		totalUpFloors += (high - low); // 最后一次的上楼层数
	}
	else {
		isBroken = 1;
		totalEggs++;
		result = low;
		totalDownFloors += (high - low); // 最后一次的下楼层数
	}

	// 成本计算
	int p1_materialScarcity = 2, p2_materialScarcity = 1, p3_materialScarcity = 4;
	int p1_laborCostIncrease = 4, p2_laborCostIncrease = 1, p3_laborCostIncrease = 2;

	// 物质匮乏时期的总成本
	int cost_materialScarcity = totalUpFloors * p1_materialScarcity +
		totalDownFloors * p2_materialScarcity +
		totalEggs * p3_materialScarcity;

	// 人力成本增长时期的总成本
	int cost_laborCostIncrease = totalUpFloors * p1_laborCostIncrease +
		totalDownFloors * p2_laborCostIncrease +
		totalEggs * p3_laborCostIncrease;

	printf("Total drops: %d, Total broken eggs: %d, Last egg broken status: %d\n", count, totalEggs, isBroken);
	printf("Cost in material scarcity period: %d\n", cost_materialScarcity);
	printf("Cost in labor cost increase period: %d\n", cost_laborCostIncrease);

	return 0;
}


