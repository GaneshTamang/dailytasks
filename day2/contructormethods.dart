void main() {
  //method 1 not mandatory
  ObjContsructor typesimplelist = ObjContsructor();
  //obect.(inneractions specified  and used for overriding)
  typesimplelist.collection = [1, 2, 3];
  print('simp method constructor ');
  //this will give which class used to create obj
  print(typesimplelist);
  //to print collection inside  object
  print(typesimplelist.collection);
  print('\n');

  print(
      'Second method of contructor with mandatory key value pair using \'required this method\'.collection ');

  //method 2 mandtory contructor with key value pair using{required this.collection}
  MandatoryObjContsructor mandtorypair =
      MandatoryObjContsructor(collection: [4, 5, 6]);
  print('class instance used');
  print(mandtorypair);
  print('list created with constructor ${mandtorypair} class and value is:');
  print(mandtorypair.collection);
  print('\n');

//method 3  mandtory contructor   with passing value only
  MandatoryObjContsructorwithpara mandopassonly =
      MandatoryObjContsructorwithpara([7, 8, 9]);
  print(
      'Second method of contructor with mandatory value using\' this method\'.collection ');
  print('class instance used');
  print(mandopassonly);
  print(
      'list created with constructor using ${mandopassonly} class and value  is:');
  //mandopassonly  object vitrako  collection lai print gar vaneko
  print(mandopassonly.collection);
  print('\n');

  //typeconst constructor
  print('using const constructor');
  Constconstructor firstconstructingarray =
      const Constconstructor([1, 'abc', 4.0]);
  print(
      'list created with constructor using ${firstconstructingarray} class and value is:');
  print(firstconstructingarray.collection);
} //main body ended

//class created area
class ObjContsructor {
  //declareread list may be null
  List<int>? collection;

  ObjContsructor() {}
}

class MandatoryObjContsructor {
  //created collection  which will ensure class has collection
  List<int> collection;
//here contructor created with mandatory action to pass key value pair when  object created
  MandatoryObjContsructor({required this.collection}) {}
}

class MandatoryObjContsructorwithpara {
  List<int> collection;
//here contructor created with mandatory action to pass value but not key value pair when  object created
  MandatoryObjContsructorwithpara(this.collection) {}
}

class Constconstructor {
  //since memmory and pushing at last to display so used final
  final List<dynamic> collection;
//this process is similar to List<dynamic> collection1=[1,2,3];

  const Constconstructor(
      this.collection); //here const contructor cant have body
}
