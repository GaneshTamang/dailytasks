void main() {
  const addBlue = false;
  const addRed = true;
  const extraColors = ['direct spread yeloow', 'direct spread  green'];
  const addExtraColors = true;

  final colors2 = [
    'grey',
    'brown',
    //collections if not a regular statement if when condition is true
    if (addRed) 'redadded',
    // ignore: dead_code
    if (addBlue) 'bluefalse',
    //spread   is 3 dots put list of values 1 by 1 from another list

    // ...extraColors,
    if (addExtraColors) ...extraColors,
    //direct value inside list dont use curly braces it will give braces in list

    if (addExtraColors) ...['orange', 'pink'],
  ];

  print(colors2);
}
