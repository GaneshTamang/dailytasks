void main() {
  //collection of collection pair created
  var students = [
    {'name': 'Ganesh', 'rollno': '1', 'birthdate': 'march11th1993'},
    {'name': 'Aakash', 'rollno': '2', 'birthdate': 'march11th2003'},
    {'name': 'Aaman', 'rollno': '3', 'birthdate': 'march11th2015'}
  ];
  for (var student in students) {
    if (student['name'] == 'Aakash' || student['name'] == 'Aaman') {
      print(student['rollno']);
      print(student['birthdate']);
    }
  }
}
