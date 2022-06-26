void main() {
  final colors = ['grey', 'brown'];
  const addBlue = false;
  const addRed = true;
  //applying if with true or false value
  // ignore: dead_code
  if (addBlue) {
    colors.add('blue');
  }
  if (addRed) {
    colors.add('red');
  }
  //collection if inside collection

  final colors2 = [
    'grey',
    'brown',
    //collections if not a regular statement if when condition is true
    if (addRed) 'redadded',
    // ignore: dead_code
    if (addBlue) 'bluefalse',
  ];

  print('color1 using regular if statement:${colors}');
  print('color2 using collection if inside collection:${colors2}');
}
