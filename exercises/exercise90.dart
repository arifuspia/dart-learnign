void main() {
  // Exercise: Sum of a list of numbers.
  print(sum([1, 2, 3, 4, 5, 6, 7]));
}

double sum(List<double> values) {
  var sum = 0.0;
  for (var value in values) {
    sum += value;
  }
  return sum;
}
