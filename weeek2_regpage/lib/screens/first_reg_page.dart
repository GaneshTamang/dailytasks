import 'package:flutter/material.dart';
import 'package:registrationpage/screens/send_money_page.dart.dart';
import 'package:registrationpage/widgets/reg_categorywidgets/driver_licence_category.dart';
import 'package:registrationpage/widgets/reg_categorywidgets/my_info_category.dart';
import 'package:registrationpage/widgets/reg_categorywidgets/my_pr_category.dart';
import 'package:registrationpage/widgets/reg_categorywidgets/new_ic_category.dart';
import 'package:registrationpage/widgets/reg_categorywidgets/passport_category.dart';

import '../models/country_data_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //var controllers and form key for first screen page
  String? currentMainDropVal;
  final _regPageformkey = GlobalKey<FormState>();
  CountryModel selectedModel = countries[0];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: setAppBarwithactions(),
          body: Form(
            key: _regPageformkey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  setSelectIdheader(),
                  const SizedBox(
                    height: 20,
                  ),
                  //dropdown

                  getCountryRegFormDropdown(),
                  const SizedBox(
                    height: 20,
                  ),
                  //body section for condition and call regforms
                  selectedModel.isNewIc ? const NewIcreg() : const SizedBox(),
                  selectedModel.isPassPortVisible
                      ? PassportReg(
                          currentMainDropdownCountry: '$currentMainDropVal')
                      : const SizedBox(),
                  selectedModel.isMyInfoVisible
                      ? const MyInfo()
                      : const SizedBox(),
                  selectedModel.isDriverLicenceVisible
                      ? const DriverlicenceReg()
                      : const SizedBox(),
                  selectedModel.isMyPRVisble
                      ? const MyPrReg()
                      : const SizedBox(),

                  const SizedBox(
                    height: 20,
                  ),
                  setButtonWithValidation(context),
                ],
              ),
            ),
          )),
    );
  }

  //method Explanations for initial page

  ElevatedButton setButtonWithValidation(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          final isValidform = _regPageformkey.currentState!.validate();
          if (isValidform) {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const SendMoneyPage()));
          }
        },
        child: Container(
            padding:
                const EdgeInsets.only(left: 60, right: 60, top: 15, bottom: 15),
            child: const Text(
              'Continue',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )));
  }

  DropdownButton<CountryModel> getCountryRegFormDropdown() {
    return DropdownButton<CountryModel>(
        borderRadius: BorderRadius.circular(20),
        alignment: Alignment.center,
        elevation: 0,
        value: selectedModel,
        style: const TextStyle(color: Color.fromARGB(255, 58, 183, 152)),
        //underline for dropdown front view

        onChanged: (changedvaluefromdrop) {
          setState(() {
            selectedModel = changedvaluefromdrop!;
            currentMainDropVal = selectedModel.countryname;
          });
        },
        //getting list and mapping string and
        //items of list country then map each element

        items: countries.map((elementsofcountry) {
          return DropdownMenuItem<CountryModel>(
            value: elementsofcountry,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 110),
              child: Text(elementsofcountry.countryname),
            ),
          );
        }).toList());
  }

  Padding setSelectIdheader() {
    return const Padding(
      padding: EdgeInsets.all(12),
      child: Text(
        'Select your ID Types',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }

  AppBar setAppBarwithactions() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        IconButton(
            onPressed: (() {}),
            icon: const Icon(
              Icons.manage_accounts,
              color: Colors.grey,
            ))
      ],
    );
  }
}
