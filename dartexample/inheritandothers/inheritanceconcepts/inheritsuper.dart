//remember the super inside the constructor is that  link between parent key andchild key
//that is parent key value =child key value for accesssing parent class

void main() {
  //parent class access
  Parent person1 = Parent(parentname: 'Durga', parentage: 50);
  // Parent person1 = Parent();
  print('used $person1');
  person1.describe();
  //parent cant acccess child but child can access parent
  // person1.showchildDetails();

  print('\n');
  Childrens son1 = Childrens('Ganesh', 25, 'bachelor', 20000);
  print('used $son1');
  son1.describe();
  //accesed parent function from child object
  son1.showchildDetails();
}

class Parent {
  Parent({this.parentname, this.parentage});

  final String? parentname;
  final int? parentage;

  void describe() =>
      print('First person name is $parentname is age of $parentage ');
}

class Childrens extends Parent {
  //contructor of child acessing features of parent name and age
  Childrens(String childname, int childage, this.studiesin, this.hisfeeExpenses)
      : super(parentname: childname, parentage: childage);
  // Childrens(String name, int age, this.studiesin, this.hisfeeExpenses);
//with this constructor wil show this output so must pass super key
// First person name is null is age of null

  String? studiesin;
  int? hisfeeExpenses;
  void showchildDetails() {
    print(
        'studiesin: $studiesin and his montlyexpense to handle:$hisfeeExpenses');
  }
}
