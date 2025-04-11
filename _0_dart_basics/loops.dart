void main() {
  List<int> nums = [];
  for (int i = 0; i < 5; i++) {
    nums.add(i + 1);
  }

  for (var _ in nums) {
    print(2);
  }

  for (var (idx, val) in nums.indexed) {
    print("$idx >> $val");
  }

  nums.forEach((ele) {
    print(1);
  });

  nums.asMap().forEach((idx, val) {
    print("$idx >> $val");
  });

  List<int> doubledNums = nums.map((e) => e * 2).toList();
  print(doubledNums);

  List<int> filteredNums = doubledNums.where((e) => e == 2).toList();
  print(filteredNums);
}
