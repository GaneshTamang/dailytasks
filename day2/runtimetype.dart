void main() {
  //here if you move mouse will show data type instance on hover message which is static statictype decl
  var vi = 5;
  var vs = 'abc';
  var vl = [1, 2, 3];
  print('var returning datatype at compile time');
  print(vi.runtimeType);
  print(vs.runtimeType);
  print(vl.runtimeType);
  print('\n');
  //but if var is not instantiated value we can declare as
  //example:
  // var x;
  // x = 12;
  // x = 12.0;
  // x = 'abc';
  // x = [1, 2, 3];
  // print(x);

//here if you move mouse will show only dynamic instance on hover message
  print('dynamic  returning datatype at run  time');
  dynamic di = 5;
  dynamic ds = 'abc';
  dynamic dl = [1, 2, 3];
  print(di.runtimeType);
  print(ds.runtimeType);
  print(dl.runtimeType);
  print('\n');
  print('initial di value:${di.runtimeType}');
  //here wecan change type in dynamic where as in var we cant will throw error example as follows
  di = 'ac';
  print('here integer change into string at run time that is di:');
  print(di.runtimeType);

  //to put value dynamically in list here canot be assigned more than once but values can be modiefied
  final List<dynamic> randmlist = [1, 'abc', 2.0];
  print('before changing array: list is :\n${randmlist}');
  randmlist[0] = 'Changed';

  randmlist.add(4);
  randmlist.add(5);
  randmlist.add(6);
  print('after changed and  add newvalues in new location');
  print('same list:');
  print(randmlist);
//another way to declaare with final and const
//here final variable values will be known at run time so here will show error at runtime
// here array value declared so cant be changed once declared
  // final List<dynamic> randomlist = const [1, 'abc', 2.0];
  // randomlist.add(4);
  // randomlist.add(4);
  // randomlist.add(4);
  // print(randomlist);

  //this will give following error
  //Unhandled exception:
  //unhandled operation: Cannot add to an unmodifiable list that is values are const

  //now for const cannot assign variable at compile time with operations of  variable like calling function
  //example: const sum=add(); here this will not work so shld be final i.e. final sum=add();
}
