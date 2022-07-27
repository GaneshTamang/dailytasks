class CountryModel {
  final String countryname;
  final bool isPassPortVisible;
  final bool isDriverLicenceVisible;
  final bool isMyInfoVisible;
  final bool isNewIc;
  final bool isMyPRVisble;

  CountryModel(
      {required this.countryname,
      required this.isPassPortVisible,
      required this.isDriverLicenceVisible,
      required this.isMyInfoVisible,
      required this.isNewIc,
      required this.isMyPRVisble});
}

//list of modelobjects data similar to rest api
List<CountryModel> countries = [
  CountryModel(
      countryname: 'Singapore',
      isPassPortVisible: false,
      isDriverLicenceVisible: false,
      isMyInfoVisible: true,
      isNewIc: false,
      isMyPRVisble: false),
  CountryModel(
      countryname: 'Nepal',
      isPassPortVisible: true,
      isDriverLicenceVisible: true,
      isMyInfoVisible: false,
      isNewIc: false,
      isMyPRVisble: false),
  CountryModel(
      countryname: 'Malaysia',
      isPassPortVisible: true,
      isDriverLicenceVisible: false,
      isMyInfoVisible: false,
      isNewIc: true,
      isMyPRVisble: true),
];
