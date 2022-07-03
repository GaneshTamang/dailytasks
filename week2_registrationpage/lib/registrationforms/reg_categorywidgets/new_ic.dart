import 'package:flutter/material.dart';

class NewIcreg extends StatefulWidget {
  const NewIcreg({Key? key}) : super(key: key);

  @override
  State<NewIcreg> createState() => _NewIcregState();
}

class _NewIcregState extends State<NewIcreg> {
  DateTime? _icExpirydate;
  TextEditingController icdatecontroller = TextEditingController();
  TextEditingController icidnamecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black)),

        //Expansion tile
        child: ExpansionTile(
          title:
              //title decoration for heading withbox
              _setTiletitle(),
          //on expansion childrens with form
          children: [
            //id number
            _getIcIdentification(),
            //Expiry data
            _getIcExpiry(context),
          ],
        ),
      ),
    );
  }

  Padding _getIcExpiry(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 50, left: 40, top: 10, bottom: 10),
      child: TextFormField(
        keyboardType: TextInputType.datetime,
        controller: icdatecontroller,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          suffixIcon: IconButton(
              onPressed: () {
                showDatePicker(
                        context: context,
                        initialDate: _icExpirydate == null
                            ? DateTime.now()
                            : _icExpirydate!,
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2046))
                    .then((pickeddatebyapp) {
                  setState(() {
                    _icExpirydate = pickeddatebyapp;
                  });
                  icdatecontroller.text =
                      '${_icExpirydate!.year}/${_icExpirydate!.month}/${_icExpirydate!.day}';
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
            borderSide: const BorderSide(
                color: Color.fromARGB(255, 172, 106, 106), width: 1.5),
          ),
          focusedBorder: OutlineInputBorder(
            gapPadding: 0.0,
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
                color: Color.fromARGB(255, 235, 26, 11), width: 1.5),
          ),
          // focusedBorder: OutlineInputBorder(

          hintText: 'Valid upto',
          labelText: ' Expiry date',
          contentPadding: const EdgeInsets.all(8),
        ),
      ),
    );
  }

  Padding _getIcIdentification() {
    return Padding(
      padding: const EdgeInsets.only(right: 50, left: 40, top: 10, bottom: 10),
      child: TextFormField(
        controller: icidnamecontroller,
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
            borderSide: const BorderSide(
                color: Color.fromARGB(255, 172, 106, 106), width: 1.5),
          ),
          focusedBorder: OutlineInputBorder(
            gapPadding: 0.0,
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
                color: Color.fromARGB(255, 235, 26, 11), width: 1.5),
          ),
          // focusedBorder: OutlineInputBorder(

          hintText: ' Id:Identification No',
          labelText: ' Identification No',
          contentPadding: const EdgeInsets.all(8),
        ),
      ),
    );
  }

  Padding _setTiletitle() {
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
              'New IC',
              style: TextStyle(fontSize: 24),
            )
          ],
        ),
      ),
    );
  }
}
