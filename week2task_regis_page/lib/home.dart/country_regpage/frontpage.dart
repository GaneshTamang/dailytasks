import 'package:flutter/material.dart';
import 'package:uinumber/home.dart/country_regpage/malaysia_id.dart';
import 'package:uinumber/home.dart/country_regpage/nepal_id.dart';

import 'package:uinumber/home.dart/country_regpage/signgapore_id.dart';

// import 'package:uinumber/ui/widgets/prcard.dart';

class FrontRegPage extends StatefulWidget {
  const FrontRegPage({Key? key}) : super(key: key);

  @override
  State<FrontRegPage> createState() => _FrontRegPageState();
}

class _FrontRegPageState extends State<FrontRegPage> {
  dynamic dropdowncurrentValue = 'Singapore';
  @override
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

            (dropdowncurrentValue == 'Singapore')
                ? const Singapore()
                : (dropdowncurrentValue == 'Malaysia')
                    ? const MalaysiaIdentificationform()
                    : (dropdowncurrentValue == 'Nepal')
                        ? const NepalIdentificationform()
                        : const Text('Something went worng')
          ],
        ));
  }

//methoods explanations
//Dropdown country
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

//Page title

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
