void main() {
  int b = 6;
  print(b);
  //numbers using hex code
  int hex = 0xF1;
  print(hex);
  // int bigint = 12324354654654654654886565456445646545456859;
  double d = 12.334;
  print(d);
  //will not change its type permanently needs holder as sting

  d.toString();
  print(d.runtimeType);
  //createing holder to holdchanged value
  String dchange = d.toString();
  //directly to string
  String a = 5.toString();
  print(dchange.runtimeType);
  print(dchange);

  print(a.runtimeType);
  //here changing string type to int
  int parsedval = int.parse(a);
  print('$parsedval${parsedval.runtimeType}');

//changing string to double
  double converttype = double.parse('1234');
  print(converttype.runtimeType);
  print(converttype);
//exponent
  double exponent = 122232e3;
  print(exponent);

  //big value int
  BigInt bigvalue = BigInt.parse('12131132132132131321313213212313132123');
  print('value:$bigvalue type:${bigvalue.runtimeType}');
}
