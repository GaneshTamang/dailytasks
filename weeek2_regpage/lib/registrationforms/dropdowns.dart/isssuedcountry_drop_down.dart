import 'package:flutter/material.dart';

class IssuedCountryDropDwon extends StatefulWidget {
  const IssuedCountryDropDwon({Key? key}) : super(key: key);

  @override
  State<IssuedCountryDropDwon> createState() => _IssuedCountryDropDwonState();
}

class _IssuedCountryDropDwonState extends State<IssuedCountryDropDwon> {
  late var dropdowncurrentValue = 'Country of issue';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      child: DropdownButton<String>(
        borderRadius: BorderRadius.circular(20),
        alignment: Alignment.center,

        elevation: 0,
        value: dropdowncurrentValue,
        style: const TextStyle(color: Color.fromARGB(255, 58, 183, 152)),
        //underline for dropdown front view

        onChanged: (String? dropselectedvalue) {
          setState(() {
            dropdowncurrentValue = dropselectedvalue!;
          });
        },
        //getting list and mapping string and
        //taking onchanged value asstring and doing action on drop down

        items: <String>['Singapore', 'Nepal', 'Malaysia', 'Country of issue']
            .map<DropdownMenuItem<String>>((String pvalue) {
          return DropdownMenuItem<String>(
            alignment: Alignment.center,
            value: pvalue,
            child: Text(pvalue),
          );
        }).toList(),
      ),
    );
  }
}
