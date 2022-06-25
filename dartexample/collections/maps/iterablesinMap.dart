void main() {
  Map<String, dynamic> person1 = {
    //map literals dont use= in maps : words as it
    'name': 'Durga',
    'age': 50,
    //above will be replace since there is conflict in two key
    // 'age': 20,
    'height': 1.84,
    // 'weight': 1.2,
  };
  //to check if key present or not
  print("contains key with key word 'name'");
  print(person1.containsKey('name'));
  print("contains key with Value 'Ganesh'");
  print(person1.containsValue('Ganesh'));
  print('\n');
  //set and lists are iterables but map is not iterables so need to accs key to iterate
  print('iterations direct from person1 map with refrence of  keys');
  for (var tempkey in person1.keys) {
    print(tempkey.runtimeType);
    print(tempkey);

    //to acces value
    print(person1[tempkey].runtimeType);
    print(person1[tempkey]);

    print('\n');
  }

  print('\n');
  print('iterations direct from person1 map with values');
  //for values only direct methods
  //here map aceesed and values linked togerther for loop
  //that is person1.values
  for (var tempval in person1.values) {
    print(tempval);
    print(tempval.runtimeType);
    print('keys is');
  }
  print(
      'this proves cant access keys with refrence of values as in refrence to key cann print value');
  print('\n');
  //third way for both key pair entries
  print('loop with entries');
  for (var tempentry in person1.entries) {
    // here we can acces eeach entry in person1 map and link witth entry and value for access
    // print(tempentry.key);
    // print(tempentry.value);
    print('${tempentry.key}:${tempentry.value}');
  }
}
