void main() {
  List<dynamic> cities = [
    'kath',
    'hello',
    'bhakta',
    'pata',
    2,
    'i am last here'
  ];

  print(cities.indexOf('bhakta'));
  print(cities.contains(2));
  cities.length;
  cities.isEmpty;
  cities.isNotEmpty;
  cities.add('abc');
  cities.insert(5, 'at 5');
  cities.removeAt(2);
  print(cities);
  cities.clear();
  print('cleared list');
  print(cities.contains(2));
  print(cities.indexOf(2));
  print(cities);
}
