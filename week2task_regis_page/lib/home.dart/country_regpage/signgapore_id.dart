import 'package:flutter/material.dart';

import 'package:uinumber/home.dart/sendmoney/sendmoney.dart';

class Singapore extends StatefulWidget {
  const Singapore({Key? key}) : super(key: key);

  @override
  State<Singapore> createState() => _SingaporeState();
}

class _SingaporeState extends State<Singapore> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Form for Singapore'),
        //id Expansion
        expansionId(),
        //button for submision and validation
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SendMoneyPage()));
            },
            child: Container(
                padding: const EdgeInsets.only(
                    left: 60, right: 60, top: 15, bottom: 15),
                child: const Text(
                  'Continue',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )))
      ],
    );
  }

  //methods

  Padding expansionId() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black)),

        //Expansion tile for id
        child: ExpansionTile(
          title: Padding(
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
          ),
          //on expansion childrens with form
          children: [
            //id name form
            Padding(
              padding: const EdgeInsets.only(
                  right: 50, left: 40, top: 10, bottom: 10),
              child: TextFormField(
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
            ),
            //id number
            Padding(
              padding: const EdgeInsets.only(
                  right: 50, left: 40, top: 10, bottom: 10),
              child: TextFormField(
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
            ),
          ],
        ),
      ),
    );
  }
}
