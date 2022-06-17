void main() {
  //here putting the list with dynamic value
  final List<dynamic> randmlist1 = [1, 'abc', 2.0];
  print('before changing array: list is :\n${randmlist1}');
  randmlist1[0] = 'Changed';

  randmlist1.add(4);
  randmlist1.add(5);
  randmlist1.add(6);
  print(
      'after changed value of first element of list and  add newvalues in new location');
  print('same list:');
  print(randmlist1);
  print('\n');
//another way to declaare with final and const
//here final variable values will be known at run time so here will show error at runtime
// here array value declared so cant be changed once declared
  print('second list with dynamic type value but the list is const ');

  final List<dynamic> randomlist2 = const [1, 'abc', 2.0];
  print('secondlist at start :\n ${randomlist2} ');
  //randomlist[0] = 'Changed';failed
  // randomlist.add(4);failed
  // randomlist.add(4);failed
  // randomlist.add(4);here list value and listspace both are const
  print('tried to change const value with\napplying add and modifying method');
  print(randomlist2);
  print(
      'tried to modify content as well as adding value with declaration  final list 2= const[] but failed');

  //this will give following error
  //Unhandled exception:
  //unhandled operation: Cannot add to an unmodifiable list that is values are const

  //now for const cannot assign variable at compile time with operations of  variable like calling function
  //example: const sum=add(); here this will not work so shld be final i.e. final sum=add();
  //here add() value can only be retrieved at runtime so cant put const sum=add();

  //to check consitency ofthe a data by hash type thats is having same identity

  print('\n');
  final list3 = const [1, 2, 3];
  const list4 = [1, 2, 3];
  print('here hashcode of these are:\nlist3: ${list3.hashCode}');
  print('list4: ${list4.hashCode}');
  print(
      'here identity of both type of declaration are same so we can write how ever we like i.e.\nfinal a=const []has equivalent identity as const a=[]');
  print('\n');

  //now incase of clss declaration for class objects
  print(
      'object class created and accessed value from class A and value overiden at run time\na:');
  final alfa = A();
  //tring to access directly fromm class A and print but failed
  //that is print(A.a);failed

  alfa.a = 10;
  print(alfa.a);
  //where as in static we can directly access and print without creating object
  print('tried accesing A directly witout creating object but failed ');
  print(
      'accesing static const value in class B without creating object with success that is \nb:');
  print(B.b);
  // int t = 6;
  // double x = 6.00;
  // print(t.hashCode);
  // print(x.hashCode);tested hash code of these has same hash code
  print(
      'attempting method on const but failed since const is compiletime and method is runtime so cant access');
  // const sum = calcsum(); cant call method in sum
  print('again trying call method using  final on runtime ');
  final sum = calcsum();
  print('done successfully and value\n Sum: $sum');
  print('\n');
}

//fucntion call sum
calcsum() => 25;

//class declaration area

class A {
  // for accessing this value at runtime using final atruntime and accesing object value
  int a = 5;
}

class B {
  //for const
  //const b = 5; here tried to declare const a but failed and shown error
  //for const it can be accessed using static declaration
  static const int b = 5;
}
