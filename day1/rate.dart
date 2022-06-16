void main() {
  //passing values with parameters ,rate and currency
  exchange(56.10, 28.3000, 'NPR');
  exchange(16.93, 100.1, 'INR');
  exchange(404.19, 10000, 'JPY');
}

exchange(double parmeters, double rate, String currencycode) {
  //with para making printing methods
  var yoursend = parmeters;
  double rateis = rate;
  //this will not work
  (rateis).toStringAsFixed(4);
  var curcode = currencycode;
  double recipient = yoursend * rate;
  print('your send is :MYR $yoursend\nrecipientgets: $curcode $recipient');
//so define it at the output moment
  print('Rate:1 MYR:$curcode ${rateis.toStringAsFixed(4)}');
  print('\n\n');
}
