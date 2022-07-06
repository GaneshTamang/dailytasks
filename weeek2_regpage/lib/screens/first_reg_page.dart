import 'package:flutter/material.dart';
import 'package:registrationpage/registrationforms/reg_categorywidgets/driverlicence.dart';
import 'package:registrationpage/registrationforms/reg_categorywidgets/my_info.dart';
import 'package:registrationpage/registrationforms/reg_categorywidgets/my_pr.dart';
import 'package:registrationpage/registrationforms/reg_categorywidgets/new_ic.dart';
import 'package:registrationpage/registrationforms/reg_categorywidgets/passport.dart';
import 'package:registrationpage/screens/scondpage.dart';

import '../datamodel/countrydatamodel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? currentval;
  final _regPageformkey = GlobalKey<FormState>();
  CountryModel selectedModel = countries[0];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
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
          ),
          body: Form(
            key: _regPageformkey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      'Select your ID Types',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //dropdown

                  DropdownButton<CountryModel>(
                      borderRadius: BorderRadius.circular(20),
                      alignment: Alignment.center,
                      elevation: 0,
                      value: selectedModel,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 58, 183, 152)),
                      //underline for dropdown front view

                      onChanged: (changedvaluefromdrop) {
                        setState(() {
                          selectedModel = changedvaluefromdrop!;
                          currentval = selectedModel.countryname;
                        });
                      },
                      //getting list and mapping string and
                      //items of list country then map each element

                      items: countries.map((elementsofcountry) {
                        return DropdownMenuItem<CountryModel>(
                          value: elementsofcountry,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 110),
                            child: Text(elementsofcountry.countryname),
                          ),
                        );
                      }).toList()),
                  const SizedBox(
                    height: 20,
                  ),
                  //body section for condition and call regforms
                  selectedModel.isNewIc ? const NewIcreg() : const SizedBox(),
                  selectedModel.isPassPortVisible
                      ? PassportReg(sm: '$currentval')
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
                  ElevatedButton(
                      onPressed: () {
                        final isValidform =
                            _regPageformkey.currentState!.validate();
                        if (isValidform) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SendMoneyPage()));
                        }
                      },
                      child: Container(
                          padding: const EdgeInsets.only(
                              left: 60, right: 60, top: 15, bottom: 15),
                          child: const Text(
                            'Continue',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ))),
                ],
              ),
            ),
          )),
    );
  }
}
