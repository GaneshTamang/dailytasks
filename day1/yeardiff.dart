import 'dart:io';

void main() {
  diff();
}

diff() {
  print('please enter the first birth date ex');
  DateTime? birthday1 = DateTime.parse(stdin.readLineSync()!);
  // final birthday = DateTime(1967, 10, 12);
  print('please enterthe second birth');
  //reading and syncing date
  DateTime? birthday2 = DateTime.parse(stdin.readLineSync()!);

  // final birthday2 = DateTime(1968, 11, 10);
  final difference = birthday2.difference(birthday1).inDays;

  print('the diffrence in days  are :$difference days');
  // final diff = birthday2.difference(birthday1).inDays;
  // print(diff);
  // remember input type doesnt work or run on console so run in terminal
  //by accessing yeardiff.dart which is my file name
}
