class CountryStatesModel {
  String country;
  List<String> statelist;
  CountryStatesModel({required this.country, required this.statelist});
}

List<CountryStatesModel> countryStates = [
  CountryStatesModel(country: 'Malaysia', statelist: [
    'Johor',
    'Kedah',
    'Kelatah',
    'Perlis',
    'Choose issued State'
  ]),
  CountryStatesModel(
      country: 'Nepal',
      statelist: ['kathmandu', 'Bhaktapur', 'Lalitpur', 'Pokhara']),
];
