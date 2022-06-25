//maps are keyvalue pairs

void main() {
  //<String, dynamic> type attonations are not necessary budefault provide dynamic but is safer to use
  Map<String, dynamic> person1 = {
    //map literals dont use= in maps : words as it
    'name': 'Durga',
    'age': 50,
    //above will be replace since there is conflict in two key
    // 'age': 20,
    'height': 1.84,
  };
  print(person1);
  print(person1.runtimeType);
  print('\n');

  //now to access one by 1
  // var age = person1['age'] as String;will give error
  var name = person1['name'] as String;
  //above method refers which type of  value  and shld be out wehen accessed
  print(name.runtimeType);
  print(name);
  var age = person1['age'];
  print(age);
  print(age.runtimeType);
  print('\n');

  //setting new values
  person1['age'] = 60;
  print('assigning new value on age on pers1');
  print(person1);

  //adding new key value pair
  print('adding new key value pair');
  person1['likesPizza'] = true;
  print(person1);

  //if there is no key and value will return null example
  var w = person1['weight'];
  print(w);
  print(person1);
}
