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
  var w = person1['weight'];
  //checking null and printing
  if (w == null) {
    print('no value');
  } else {
    print(w);
  }
  print('\n');
  //set and lists are iterables but map is not iterables
}
