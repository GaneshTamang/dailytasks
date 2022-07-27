import 'package:flutter/material.dart';

import '../../models/country_data_model.dart';

class IssuedCountryDropDwon extends StatefulWidget {
  const IssuedCountryDropDwon({Key? key}) : super(key: key);

  @override
  State<IssuedCountryDropDwon> createState() => _IssuedCountryDropDwonState();
}

class _IssuedCountryDropDwonState extends State<IssuedCountryDropDwon> {
  CountryModel selectedModel = countries[0];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      child: DropdownButton<CountryModel>(
          borderRadius: BorderRadius.circular(20),
          alignment: Alignment.center,
          elevation: 0,
          value: selectedModel,
          style: const TextStyle(color: Color.fromARGB(255, 58, 183, 152)),
          //underline for dropdown front view

          onChanged: (changedvaluefromdrop) {
            setState(() {
              selectedModel = changedvaluefromdrop!;
            });
          },
          //getting list and mapping string and
          //items of list country then map each element

          items: countries.map((elementsofcountry) {
            return DropdownMenuItem<CountryModel>(
              value: elementsofcountry,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(elementsofcountry.countryname),
              ),
            );
          }).toList()),
    );
  }
}
