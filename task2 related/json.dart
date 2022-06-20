import 'dart:convert';

void main() {
  // final products = [
  //   {'id': 1, 'name': 'Product #1'},
  //   {'id': 2, 'name': 'Product #2'}
  // ];

  // print(json.encode(products));

  //decode
  var jsonData = '''
  [{"name":"Alex","age":20,"marks":50.56,"encode":false}]
  ''';

  var decodedData = jsonDecode(jsonData);
  print(decodedData);
  print(decodedData.runtimeType);
  print(decodedData.hashCode);
}
