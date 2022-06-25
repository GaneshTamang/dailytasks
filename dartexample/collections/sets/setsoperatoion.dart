void main() {
  // var cities = ['abc']; cant declare only once
  Set asianCountries = {'nep', 'china', 'india', 'qatar', 2};
  Set euCountries = {'russia', 'UK', 'nep'};
  print(asianCountries);
  print(euCountries);
  //uniion of countries
  print('union:\n${asianCountries.union(euCountries)}');
  print('\n');
  //intersection
  print(asianCountries.intersection(euCountries));
  print('\n');
  //difference
  print(asianCountries.difference(euCountries));
  print('\n');
  print(euCountries.difference(asianCountries));
  print('\n');

  //for loop
  for (var tempcont in asianCountries) {
    print(tempcont);
  }
}
