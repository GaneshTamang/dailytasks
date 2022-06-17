import 'dart:io';

void main() {
  print('please enter the first birth date eg year-month-day');

  DateTime? birthday1 = DateTime.parse(stdin.readLineSync()!);
  print('please enter the second birth date eg year-month-day');

  DateTime? birthday2 = DateTime.parse(stdin.readLineSync()!);

  // if (birthday1 == null) {
  //   birthday1 = birthday2;
  // }
  // if (birthday2 == null) {
  //   birthday2 = birthday1;
  // }

  //date input model
  // final birthday = DateTime(1967, 10, 12);

  diff(birthday1, birthday2);
}

diff(birthday1, birthday2) {
  print('please enter the first birth date ex');

  final b1 = birthday1;
  final b2 = birthday2;
  final difference = b2.difference(b1).inDays;
  print('the diffrence in days  are :$difference days');

  //initial testcode
  // print('please enterthe first birthday');
  // DateTime? birthday1 = DateTime.parse(stdin.readLineSync()!);
  // final birthday = DateTime(1967, 10, 12);

  // print('please enterthe second birth');
  //reading and syncing date
  // DateTime? birthday2 = DateTime.parse(stdin.readLineSync()!);

  // final birthday2 = DateTime(1968, 11, 10);

  // final diff = birthday2.difference(birthday1).inDays;
  // print(diff);
  // remember input type doesnt work or run on console so run in terminal
  //by accessing yeardiff.dart which is my file name
}
