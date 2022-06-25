//wap to print a set that doesnt have  commong element in a and b
void main() {
  var a = {1, 3};
  print(a.runtimeType);
  var b = {3, 5};
  var c = a.union(b);
  var d = c.difference(a.intersection(b));
  print(d);
  var sum = 0;
//can do in for loop as
  for (var temp in d) {
    sum += temp;
    print(temp.runtimeType);
  }
  print(sum);
}
