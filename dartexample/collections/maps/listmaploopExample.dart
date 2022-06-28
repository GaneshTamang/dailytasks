//iterations of list with value and each value compared to map key & if value exists adding

void main() {
  Map<String, dynamic> menu = {'tea': 25.5, 'pizza': 250.0, 'chowmin': 140.0};
  const order = ['tea', 'ciggrette', 'pizza', 'raksi'];
  var totalprice = 0.0;
  //iteraring list of order
  //order in loop first
  for (var customerRecievedOrder in order) {
    //comparing with map where each order cones as 'item order'
    //putting list value in map menu and accessed price value  with sending key
    //that is var currentage=person1['age']; whill will put value type in int type age in current age from map

    print(customerRecievedOrder);
    //making current value from  map  that is map named menu has key   or not
    //what is current=menu['oredereditem']; which will compare to map menu and provide null or value
//checking condition existis or nill
    final currentRecievedMenuPrice = menu[customerRecievedOrder];
    //comparing with current value and doing action if meets condition

    if (currentRecievedMenuPrice != null) {
      //list loop value recieved
      print('custormer ordered ${customerRecievedOrder} is availabele on menu');
      //list bvalue compare to map key and got price
      print(
          'current recieved order item price is ${menu[customerRecievedOrder]}');
      //price added in loop
      totalprice = currentRecievedMenuPrice + totalprice;
      //equivalent code is totalprice+=currentprice
      print('current total price :$totalprice');
      print('\n');
    } else {
      print('${customerRecievedOrder} is not on menu');
      print('\n');
    }
  }
  print('ty for coming');
  print('totalamount to pay by customer:Rs $totalprice');
}

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
