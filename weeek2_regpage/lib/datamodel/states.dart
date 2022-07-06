class States {
  String country;
  List<String> statelist;
  States({required this.country, required this.statelist});
}

List<States> countryStates = [
  States(country: 'Malaysia', statelist: [
    'Johor',
    'Kedah',
    'Kelatah',
    'Perlis',
    'Choose issued State'
  ]),
  States(
      country: 'Nepal',
      statelist: ['kathmandu', 'Bhaktapur', 'Lalitpur', 'Pokhara']),
];
