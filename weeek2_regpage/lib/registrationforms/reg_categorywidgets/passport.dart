import 'package:flutter/material.dart';
import 'package:registrationpage/registrationforms/dropdowns.dart/isssuedcountry_drop_down.dart';

class PassportReg extends StatefulWidget {
  final String sm;
  const PassportReg({Key? key, required this.sm}) : super(key: key);

  @override
  State<PassportReg> createState() => _PassportRegState();
}

class _PassportRegState extends State<PassportReg> {
  DateTime? _myexpdate;
  DateTime? _myissuedate;
  TextEditingController passportIssuedDateController = TextEditingController();
  TextEditingController passportExpiryDateController = TextEditingController();
  TextEditingController passportNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black)),

        //Expansion tile for form
        child: ExpansionTile(
          maintainState: true,
          title:
              //title decoration for heading withbox
              _passportFormTitleDeco(),
          //on expansion childrens with form
          children: [
            //id number
            _getpassportNumberForm(),
            //expirydate
            _getPassportExpiryDateForm(context),

            //issue date
            _getPassportissuedateForm(context),
            widget.sm == 'Malaysia'
                ? const IssuedCountryDropDwon()
                : const SizedBox(),
          ],
        ),
      ),
    );
  }

  Padding _getPassportissuedateForm(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 50, left: 40, top: 10, bottom: 10),
      child: TextFormField(
        controller: passportIssuedDateController,
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
                        initialDate: _myissuedate == null
                            ? DateTime.now()
                            : _myissuedate!,
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2030))
                    .then((pickeddatebyapp) {
                  setState(() {
                    _myissuedate = pickeddatebyapp;
                  });
                  passportIssuedDateController.text =
                      '${_myissuedate!.year}/${_myissuedate!.month}/${_myissuedate!.day}';
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

          hintText: 'Passport Issuedate',
          labelText: 'Passport Issuedate',
          contentPadding: const EdgeInsets.all(8),
        ),
      ),
    );
  }

  Padding _getPassportExpiryDateForm(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 50, left: 40, top: 10, bottom: 10),
      child: TextFormField(
        controller: passportExpiryDateController,
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
                            _myexpdate == null ? DateTime.now() : _myexpdate!,
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2046))
                    .then((pickeddatebyapp) {
                  setState(() {
                    _myexpdate = pickeddatebyapp;
                  });
                  passportExpiryDateController.text =
                      '${_myexpdate!.year}/${_myexpdate!.month}/${_myexpdate!.day}';
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

          hintText: 'Passport Expirydate',
          labelText: 'Passport Expirydate',
          contentPadding: const EdgeInsets.all(8),
        ),
      ),
    );
  }

  Padding _getpassportNumberForm() {
    return Padding(
      padding: const EdgeInsets.only(right: 50, left: 40, top: 10, bottom: 10),
      child: TextFormField(
        controller: passportNumberController,
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
            borderSide: const BorderSide(color: Colors.grey, width: 1.5),
          ),
          focusedBorder: OutlineInputBorder(
            gapPadding: 0.0,
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
                color: Color.fromARGB(255, 235, 26, 11), width: 1.5),
          ),
          hintText: 'Passport Number',
          labelText: 'Passport Number',
          contentPadding: const EdgeInsets.all(8),
        ),
      ),
    );
  }

  Padding _passportFormTitleDeco() {
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
              'Passport',
              style: TextStyle(fontSize: 24),
            )
          ],
        ),
      ),
    );
  }
}
