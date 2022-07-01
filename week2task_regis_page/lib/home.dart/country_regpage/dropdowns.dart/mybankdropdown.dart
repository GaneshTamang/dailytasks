import 'package:flutter/material.dart';

class BankSelectDropdown extends StatefulWidget {
  const BankSelectDropdown({Key? key}) : super(key: key);

  @override
  State<BankSelectDropdown> createState() => _BankSelectDropdownState();
}

class _BankSelectDropdownState extends State<BankSelectDropdown> {
  late var dropdowncurrentValue = 'May Bank';
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

        items: <String>['Bank1', 'Bank2', 'Bank3', 'May Bank']
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
