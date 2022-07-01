import 'package:flutter/material.dart';

class IssuedStateDropDwon extends StatefulWidget {
  const IssuedStateDropDwon({Key? key}) : super(key: key);

  @override
  State<IssuedStateDropDwon> createState() => _IssuedStateDropDwonState();
}

class _IssuedStateDropDwonState extends State<IssuedStateDropDwon> {
  late var dropdowncurrentValue = 'Choose issued State';
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

        items: <String>[
          'Johor',
          'Kedah',
          'Kelatah',
          'Perlis',
          'Choose issued State'
        ].map<DropdownMenuItem<String>>((String pvalue) {
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
