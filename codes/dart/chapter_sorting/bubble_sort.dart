/**
 * File: bubble_sort.dart
 * Created Time: 2023-02-14
 * Author: what-is-me (whatisme@outlook.jp)
 */

/* 冒泡排序 */
void bubbleSort(List<int> nums) {
  // 外循环：待排序元素数量为 n-1, n-2, ..., 1
  for (int i = nums.length - 1; i > 0; i--) {
    // 内循环：冒泡操作
    for (int j = 0; j < i; j++) {
      if (nums[j] > nums[j + 1]) {
        // 交换 nums[j] 与 nums[j + 1]
        int tmp = nums[j];
        nums[j] = nums[j + 1];
        nums[j + 1] = tmp;
      }
    }
  }
}

/* 冒泡排序（标志优化）*/
void bubbleSortWithFlag(List<int> nums) {
  // 外循环：待排序元素数量为 n-1, n-2, ..., 1
  for (int i = nums.length - 1; i > 0; i--) {
    bool flag = false; // 初始化标志位
    // 内循环：冒泡操作
    for (int j = 0; j < i; j++) {
      if (nums[j] > nums[j + 1]) {
        // 交换 nums[j] 与 nums[j + 1]
        int tmp = nums[j];
        nums[j] = nums[j + 1];
        nums[j + 1] = tmp;
        flag = true; // 记录交换元素
      }
    }
    if (!flag) break; // 此轮冒泡未交换任何元素，直接跳出
  }
}

void main() {
  List<int> nums = [4, 1, 3, 1, 5, 2];
  bubbleSort(nums);
  print("冒泡排序完成后 nums = $nums");

  List<int> nums1 = [4, 1, 3, 1, 5, 2];
  bubbleSortWithFlag(nums1);
  print("冒泡排序完成后 nums1 = $nums1");
}
