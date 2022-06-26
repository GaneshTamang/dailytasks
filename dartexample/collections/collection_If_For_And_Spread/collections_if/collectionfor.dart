void main() {
  const addBlue = false;
  const addRed = true;
  const extraColors = ['yeloow', 'green'];
  final colors2 = [
    'grey',
    'brown',
    //collections if not a regular statement if when condition is true
    if (addRed) 'redadded',
    // ignore: dead_code
    if (addBlue) 'bluefalse',
    // collectionfor
    //here value from another list is added from  in this list in for loop
    for (var temp_color in extraColors) temp_color,
  ];
  //another list added inside the list
  // colors2.addAll(extraColors);
  print(colors2);
}
