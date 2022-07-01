import 'package:flutter/material.dart';
import 'package:uinumber/ui/widgets/prcard.dart';

class SelectIdHome extends StatefulWidget {
  const SelectIdHome({Key? key}) : super(key: key);

  @override
  State<SelectIdHome> createState() => _SelectIdHomeState();
}

class _SelectIdHomeState extends State<SelectIdHome> {
  late dynamic dropdowncurrentValue = 'Singapore';
  // List<String> mydrop = ['Singapore', 'Nepal', 'Malaysia'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: actionAppBar(),
        body: ListView(
          children: [
            //title text
            _pagetitleheading(),
            //drop down button
            dropdowncountry(),
            const Prcard(cardname: 'MyPr'),
            const Prcard(cardname: 'myvisa')
          ],
        ));
  }

  Container dropdowncountry() {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black)),
      child: DropdownButton<String>(
        isExpanded: true, alignment: Alignment.center,

        value: dropdowncurrentValue,
        style: const TextStyle(color: Colors.deepPurple),
        //underline for dropdown front view

        onChanged: (String? dropselectedvalue) {
          setState(() {
            dropdowncurrentValue = dropselectedvalue!;
          });
        },
        //getting list and mapping string and
        //taking onchanged value asstring and doing action on drop down

        items: <String>['Singapore', 'Nepal', 'Malaysia']
            .map<DropdownMenuItem<String>>((String pvalue) {
          return DropdownMenuItem<String>(
            value: pvalue,
            child: Text(pvalue),
          );
        }).toList(),
      ),
    );
  }

//list vieew explanations

  Padding _pagetitleheading() {
    return const Padding(
      padding: EdgeInsets.only(left: 12),
      child: Text(
        'Select your ID Types',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }

//method for app bar
  AppBar actionAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        IconButton(
            onPressed: (() {}),
            icon: const Icon(
              Icons.manage_accounts,
              color: Colors.black,
            ))
      ],
    );
  }
}
