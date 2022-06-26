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
  //spread for map
  const ratinglist2 = [4.0, 4.5, 5];
  final resturants2 = {
    'name': 'Durga',
    'cusine': 'aloooo',
    if (ratinglist2.length > 3) ...{
      'ratings': ratinglist2,
      'isPopular': true,
    }
  };
  print(resturants2);
  print(
      'resturant 2 is not popular for rating since it has 3 rating input so rating is ignored');
  const ratinglist = [4.0, 4.5, 3.5, 5];
  final resturants = {
    'name': 'Ganesh',
    'cusine': 'Newari',
    if (ratinglist.length > 3) ...{
      'ratings': ratinglist,
      'isPopular': true,
    }
  };
  print(resturants);
}
