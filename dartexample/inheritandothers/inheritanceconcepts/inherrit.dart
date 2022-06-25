void main() {
  //parent class access
  Parent person1 = Parent(parentname: 'Durga', parentage: 60);
  // Parent person1 = Parent();
  print('used $person1');
  person1.describe();
  print('\n');
  Childrens son1 = Childrens(
      childname: 'Ganesh',
      childage: 29,
      studiesin: 'Bachelor',
      hisfeeExpenses: 20000);
  print('used $son1');
  son1.describe();
  son1.showchildDetails();
}

class Parent {
  //creating class constructor with this operationwill make parameter passing mandatory on obj creation time
  Parent({this.parentname, this.parentage});
  //here curly value makes the  constructor to have key value pair mandatory
  //constructor cant have a body
  // Parent();
  final String? parentname;
  final int? parentage;
  //function inside class
  void describe() =>
      print('First person name is $parentname is age of $parentage ');
}

class Childrens extends Parent {
  Childrens(
      {String? childname, int? childage, this.studiesin, this.hisfeeExpenses})
      : super(parentname: childname, parentage: childage);

  String? studiesin;
  int? hisfeeExpenses;
  void showchildDetails() {
    print(
        'studiesin: $studiesin and his montlyexpense to handle:$hisfeeExpenses');
  }
}
//while using super key always do top to bottom that is parent name already exist so put value of child in parent
