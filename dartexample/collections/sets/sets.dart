void main() {
  // var cities = ['abc']; cant declare only once
  var countries = {
    'nep',
    'china',
    'india',
    'qatar',
  };

  print(countries.runtimeType);
  print(countries);
  print(countries.elementAt(0));
  //here sets doesnt add if already has same vale
  countries.add('nep');
  print(countries);
  countries.remove('india');
  print(countries);
}
