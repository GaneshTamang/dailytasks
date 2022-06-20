//note: async works with await and future works with then that is
//for Future abc=something arrrives then if arrives abc.then((value holder name){action})
//await just wait asychronally i.e. String abc=await downloadf();then  actioni.e.print(abc);

void main() {
  print('main start and call print future down');
  printfilecont();
  print('Waiting for future before program ends.......');
}

//asyncchronally runs program on future may happen something without interupting program
//similar actions (){} is equal to()=>
printfilecont() async {
  //checking respo of future if it will happen
  // String filecont = await downloadf();
  // print('here down file after async waiting for  5 sec is :$filecont');

  //then performing action if future action returns something
  Future<String> filecont = downloadf();
  filecont.then((futdatholderaftersuccess) {
    print('print content of file is -->${futdatholderaftersuccess}');
  });
}

downloadf() {
  //on future w8 5 sec to download file
  //lamda action means function s or actions passed inside curly bracket(){action here}
  Future<String> dat =
      Future.delayed(Duration(seconds: 5), //delayed anad waited
          () {
    return 'my data download file arrived here';
  });
  return dat;
}
