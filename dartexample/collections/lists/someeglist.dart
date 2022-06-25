void main() {
  var numlist = [
    1,
    3,
    4,
    5,
  ];
  print(numlist.runtimeType);

  var sum = 0;
  for (var tempnum in numlist) {
    sum += tempnum;
  }
  print(sum);
}
