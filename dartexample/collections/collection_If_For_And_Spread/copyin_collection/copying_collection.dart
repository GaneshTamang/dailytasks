void main() {
  final mylist = [1, 2, 3];
  final copyinglist_from_mylist = mylist;
  //here both are taking refrence at same mermory so will affect boththat is 0 on both
  copyinglist_from_mylist[0] = 0;

  print('mylist:$mylist');
  print(
      'copyinglist_from_mylist:$copyinglist_from_mylist here used ssame memory location since refrenced same memory');
  print('\n');
  // so not to effect all we create a enoty list ten assign one by one
  print('creating seperate memory by creating empty list at start');
  print('putting value in loop 1 by 1 using condition if i.e. for method ....');
  final seperate_mem_list = [
    for (var tempitem in mylist) tempitem,
  ];
  seperate_mem_list[2] = 8;
  print('mylist:$mylist');
  print('seperate_mem_list:$seperate_mem_list');
  print('\n');

  // using spread operator (...)
  print(
      'another method for separate memory refrence using sread operator(...)');
  print('created empty memory list and put value from my list 1by 1.........');
  final seperate_mem_list2 = [
    ...mylist,
  ];
  print('value cchanged 3 in 2nd place');
  seperate_mem_list2[1] = 3;
  print('mylist:$mylist');
  print(
      'copyinglist_from_mylisthaving same merotyry location:$copyinglist_from_mylist');
  print('seperate_mem_list2:$seperate_mem_list2');
  print('\n');

  //my method
  var m3 = [];
  print('m3:$m3');
  print(
      'have to insert & cant m3[0]=mylist[0] since m3 is empty needto create memory loaction first');
  print('inserting with memory index and value............');
  print(m3.runtimeType);
  for (int i = 0; i < mylist.length; i++) {
    m3.insert(i, mylist[i]);
  }

  print('m3:$m3');
  print('changed');
  m3[1] = 44444;
  print('m3:$m3');
}
