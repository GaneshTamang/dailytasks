void main() {
  List<dynamic> cities = ['kath', 'bhakta', 'pata', 2, 'i am last here'];
  print(cities.runtimeType);
  print(cities);
  //to change
  cities[0] = 'nepal';
  print('length of my  list: ${cities.length}');
  //checking emty or not
  print(cities.isEmpty);
  print(cities.isNotEmpty);
  //emptlistliterals
  print([].isEmpty);
  print([].isNotEmpty);
  print('\n');
  print(cities.first);
  print(cities.last);
  //for loop for list
  print('\n');
  for (var tempcit in cities) {
    print(tempcit.runtimeType);
    print(tempcit);
  }

  print('\n');
  //also can suse same as in c in for loop
  for (var i = 0; i < cities.length; i++) {
    print(cities[i]);
  }
  //to add
  //addas at last position in list
  cities.add('pokhara');
  print(cities);
  //will be inserted in defined position
  cities.insert(3, 'i am inserted this position');
  print(cities);
  //to remove by positin

  cities.removeAt(5);
  print(cities);
  // remove by value

  cities.remove('pokhara');
  print(cities);
  cities.clear();
  print(cities);
  print(cities.length);
  print(cities.isEmpty);
  print(cities.runtimeType);
  cities.add('newborn list value');
  print(cities);
  print(cities.runtimeType);
}
