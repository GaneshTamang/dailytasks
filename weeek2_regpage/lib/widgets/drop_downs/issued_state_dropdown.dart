import 'package:flutter/material.dart';

import 'package:registrationpage/models/country_states_model.dart';

class IssuedStateDropDwon extends StatefulWidget {
  const IssuedStateDropDwon({Key? key}) : super(key: key);

  @override
  State<IssuedStateDropDwon> createState() => _IssuedStateDropDwonState();
}

class _IssuedStateDropDwonState extends State<IssuedStateDropDwon> {
  // late var dropdowncurrentValue = 'Choose issued State';
  CountryStatesModel selectedModel = countryStates[0];
  String selectedState = 'Johor';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      child: DropdownButton<String>(
        borderRadius: BorderRadius.circular(20),
        alignment: Alignment.center,
        elevation: 0,
        value: selectedState,
        style: const TextStyle(color: Color.fromARGB(255, 58, 183, 152)),
        //underline for dropdown front view

        onChanged: (changedValueFrmDrop) {
          setState(() {
            // selectedModel = changedvaluefromdrop!;
            selectedState = changedValueFrmDrop!;
          });
        },
        //getting list and mapping string and
        //items of list country then map each element

        items: getDropDownItems(),
      ),
    );
  }

  getDropDownItems() {
    return countryStates[0]
        .statelist
        .map((e) => DropdownMenuItem<String>(
              value: e,
              child: Text(e),
            ))
        .toList();
  }
}
  // List<String> states = [
  //   'Johor',
  //   'Kedah',
  //   'Kelatah',
  //   'Perlis',
  //   'Choose issued State'
  // ];

