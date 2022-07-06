import 'package:flutter/material.dart';

import '../dropdowns.dart/issued_state_dropdown.dart';

class MyPrReg extends StatefulWidget {
  const MyPrReg({Key? key}) : super(key: key);

  @override
  State<MyPrReg> createState() => _MyPrRegState();
}

class _MyPrRegState extends State<MyPrReg> {
  DateTime? _mydate;
  TextEditingController expirydatecontroller = TextEditingController();
  TextEditingController idnumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey)),
        //Expansion tile init
        child: ExpansionTile(
          maintainState: true,
          title:
              //title decoration for heading withbox
              Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    child: const Icon(
                      Icons.badge,
                      size: 40,
                      color: Colors.green,
                    ),
                  ),
                  const Text(
                    'MyPR',
                    style: TextStyle(fontSize: 24),
                  )
                ],
              ),
            ),
          ),
          //on expansion childrens with form
          children: [
            //id number
            Padding(
              padding: const EdgeInsets.only(
                  right: 50, left: 40, top: 10, bottom: 10),
              child: TextFormField(
                controller: idnumber,
                validator: (cntrlrvalue) {
                  if (cntrlrvalue != null && cntrlrvalue.length < 14) {
                    return 'enter atleast 14 char';
                  }
                  return null;
                },
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.grey, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    gapPadding: 0.0,
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.5),
                  ),
                  // focusedBorder: OutlineInputBorder(

                  hintText: 'Identfication Number',
                  labelText: 'Identfication Number',
                  contentPadding: const EdgeInsets.all(8),
                ),
              ),
            ),
            //Expiry date

            Padding(
              padding: const EdgeInsets.only(
                  right: 50, left: 40, top: 10, bottom: 10),
              child: TextFormField(
                controller: expirydatecontroller,
                validator: (value) {
                  if (value == "") {
                    return 'Date is Empty';
                  } else {
                    return null;
                  }
                },
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        showDatePicker(
                                context: context,
                                initialDate:
                                    _mydate == null ? DateTime.now() : _mydate!,
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2046))
                            .then((pickeddatebyapp) {
                          setState(() {
                            _mydate = pickeddatebyapp;
                          });
                          expirydatecontroller.text =
                              '${_mydate!.year}/${_mydate!.month}/${_mydate!.day}';
                        });
                      },
                      icon: const Icon(
                        Icons.calendar_month,
                        color: Colors.blue,
                      )),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.grey, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    gapPadding: 0.0,
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.5),
                  ),
                  // focusedBorder: OutlineInputBorder(

                  hintText: ' Expiry Date',
                  labelText: ' Expiry Date',
                  contentPadding: const EdgeInsets.all(8),
                ),
              ),
            ),

            //dropdown for state
            const IssuedStateDropDwon(),
          ],
        ),
      ),
    );
  }
}
