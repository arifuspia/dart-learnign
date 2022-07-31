void main() {
  // exercise 55

  var nums = [1, 2, 3, 4, 5, 6, 7];
  var sum = 0;

  for (var num in nums) {
    sum += num;
  }
  print(sum);
}
