part of package1;

class Add {
  dynamic number1;
  dynamic number2;
  Add({required this.number1, required this.number2});
  action() {
    var res = number1 + number2;
    return res;
  }
}
