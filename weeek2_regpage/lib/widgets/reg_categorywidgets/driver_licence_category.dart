import 'package:flutter/material.dart';

class DriverlicenceReg extends StatefulWidget {
  const DriverlicenceReg({Key? key}) : super(key: key);

  @override
  State<DriverlicenceReg> createState() => _DriverlicenceRegState();
}

class _DriverlicenceRegState extends State<DriverlicenceReg> {
  DateTime? _myDlexpDate;
  TextEditingController driverlicenNumcontroller = TextEditingController();
  TextEditingController driverLicenceExpiryDateController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey)),

        //Expansion tile
        child: _textformfordriverLicence(),
      ),
    );
  }

//method Explanations

  ExpansionTile _textformfordriverLicence() {
    return ExpansionTile(
      initiallyExpanded: true,
      maintainState: true,

      title:
          //title decoration for heading withbox
          setTitleForDriverLicence(),
      //on expansion childrens with form
      children: [
        //id number
        getTextformIdNum(),
        getExpirydateForm(),
      ],
    );
  }

  Padding getExpirydateForm() {
    return Padding(
      padding: const EdgeInsets.only(right: 50, left: 40, top: 10, bottom: 10),
      child: TextFormField(
        controller: driverLicenceExpiryDateController,
        validator: (value) {
          if (value == "") {
            return 'Empty Date';
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
                        initialDate: _myDlexpDate == null
                            ? DateTime.now()
                            : _myDlexpDate!,
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2046))
                    .then((pickeddatebyapp) {
                  setState(() {
                    _myDlexpDate = pickeddatebyapp;
                  });
                  driverLicenceExpiryDateController.text =
                      '${_myDlexpDate!.year}/${_myDlexpDate!.month}/${_myDlexpDate!.day}';
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
            borderSide: const BorderSide(color: Colors.grey, width: 1.5),
          ),
          focusedBorder: OutlineInputBorder(
            gapPadding: 0.0,
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
                color: Color.fromARGB(255, 235, 26, 11), width: 1.5),
          ),
          // focusedBorder: OutlineInputBorder(

          hintText: 'Valid upto',
          labelText: 'Driver licence Expiry date',
          contentPadding: const EdgeInsets.all(8),
        ),
      ),
    );
  }

  Padding getTextformIdNum() {
    return Padding(
      padding: const EdgeInsets.only(right: 50, left: 40, top: 10, bottom: 10),
      child: TextFormField(
        validator: (cntrlrvalue) {
          if (cntrlrvalue != null && cntrlrvalue.length < 14) {
            return 'enter atleast 14 char';
          }
          return null;
        },
        controller: driverlicenNumcontroller,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.grey, width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.grey, width: 1.5),
          ),
          focusedBorder: OutlineInputBorder(
            gapPadding: 0.0,
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
                color: Color.fromARGB(255, 235, 26, 11), width: 1.5),
          ),
          // focusedBorder: OutlineInputBorder(

          hintText: 'Driving Licence Id No',
          labelText: 'Driving Licence Id No',
          contentPadding: const EdgeInsets.all(8),
        ),
      ),
    );
  }

  Padding setTitleForDriverLicence() {
    return Padding(
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
              'Driver Licence',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
