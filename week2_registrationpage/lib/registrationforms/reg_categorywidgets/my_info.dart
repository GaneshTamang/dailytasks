import 'package:flutter/material.dart';

class MyInfo extends StatefulWidget {
  const MyInfo({Key? key}) : super(key: key);

  @override
  State<MyInfo> createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
  TextEditingController idNumberController = TextEditingController();
  TextEditingController idNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black)),

        //Expansion tile for id
        child: ExpansionTile(
          title: _gettiletitle(),
          //on expansion childrens with form
          children: [
            //id name form
            idnametextform(),
            //id number
            _identificationnumber(),
          ],
        ),
      ),
    );
  }

  Padding _gettiletitle() {
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
              'IdNumber',
              style: TextStyle(fontSize: 24),
            )
          ],
        ),
      ),
    );
  }

  Padding _identificationnumber() {
    return Padding(
      padding: const EdgeInsets.only(right: 50, left: 40, top: 10, bottom: 10),
      child: TextFormField(
        controller: idNumberController,
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

          hintText: 'Identfication Number',
          labelText: 'Identfication Number',
          contentPadding: const EdgeInsets.all(8),
        ),
      ),
    );
  }

  Padding idnametextform() {
    return Padding(
      padding: const EdgeInsets.only(right: 50, left: 40, top: 10, bottom: 10),
      child: TextFormField(
        controller: idNameController,
        validator: (value) {
          if (value != null && value.length < 8) {
            return 'enter atleast 8 characters';
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

          hintText: 'Id Name',
          labelText: 'Id Name',
          contentPadding: const EdgeInsets.all(8),
        ),
      ),
    );
  }
}
