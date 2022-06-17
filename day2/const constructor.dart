void main() {
  //here c1 is instance of object creation so if u print c1 it will give instance of
  var c1 = C(jammasuchi: [1, 2, 3]);
  var c2 = C(jammasuchi: [1, 2, 3]);
  //object c2 must be passed with para with value pair at instantiate time or will not work
  // var c2 = C();
  // c2.jammasuchi = [3, 4, 6];
  print('printting c1 will give instance since this is instance created ');
  print(c1);
  print(c2);
  print('to print the list hash code of class c with object c1 and c2 ');

  print(c1.jammasuchi.hashCode);
  print(c2.jammasuchi.hashCode);
  print('gives hashcode for clas  with object c1 and c2');
  print(c1.hashCode);
  print(c2.hashCode);
  //array output with same value
  print(c1.jammasuchi);
  print(c2.jammasuchi);
  print(c1.q);
  print('result:having different hash code');
  print('\n');
//in above list valu  may seem as const but are not really const
  //to make it having same hash code for constitency for memory
  var c3 = const D(jammasuchi: [1, 2, 3]);
  var c4 = const D(jammasuchi: [1, 2, 3]);
  print(c3);
  print(c4);
  print('to print the list hash code of class c with object c3 and c4 ');

  print(c3.jammasuchi.hashCode);
  print(c4.jammasuchi.hashCode);
  print('gives hashcode for clas  with object c3and c4');
  print(c3.hashCode);
  print(c4.hashCode);
  //array output with same value
  print(c3.jammasuchi);
  print(c4.jammasuchi);
  print('result:having same  hash code');
}

//not a class with  constant constructor
class C {
  //variable created with list type and made mandatory parameter while calling class
  final List<int> jammasuchi;
  //different from above proccess direct list and call

  var q = [4, 5, 6];
  //constructor created and  must pass value to instantiate
  C({required this.jammasuchi}) {}
}

//for consistent  const constructor with objects that is having same memory identity
//which will be good for performance incase of long run program
class D {
  //variable created with list type and made mandatory parameter while calling class
  //here  this class contains const constructor so cannot allocate memory at runtime
  // we must use final for variable so it can use and called at run time
  //if used const instead of final will throw error with message Only static fields can be declared as const.
  //Try declaring the field as final, or adding the keyword 'static'.if we add static connst will also throw error
  final List<int> jammasuchi;
  //different from above proccess direct list and call

  //constructor created and  must pass value to instantiate
  const D({required this.jammasuchi});
  //here constant constructor cant have a body that is
  //const D({required this.jammasuchi}){} which will not work as in class C
}
