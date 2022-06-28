void main() {
  var resturantslist = [
    {
      //map literals dont use= in maps : words as it
      'name': 'Durga',
      'style': 'nepali',

      'ratings': [8.0, 3.8, 5.2]
    },
    {
      //map literals dont use= in maps : words as it
      'name': 'Ganesh',
      'style': 'usa',

      'ratings': [12.0, 4.8, 5.0]
    },
    {
      //map literals dont use= in maps : words as it
      'name': 'Mingmar',
      'style': 'Uk',

      'ratings': [8.0, 4.8, 5.2]
    },
  ];
  print('here designed list with map and inside map with list');
  print(resturantslist.runtimeType);

  for (var getting_Resturant_map in resturantslist) {
    //making sure list inside map as map
    final getting_Ratings_of_Resturants =
        getting_Resturant_map['ratings'] as List<double>;
    //operating on aquired list
    var avg_rating = 0.0;
    //
    for (var myrating in getting_Ratings_of_Resturants) {
      print('rated:${myrating}');
      avg_rating = myrating + avg_rating;
    }

    print('avg rating of resturant of ${getting_Resturant_map['name']}');
    print('avg rating is:${avg_rating / getting_Ratings_of_Resturants.length}');
    print('\n');
  }
}
