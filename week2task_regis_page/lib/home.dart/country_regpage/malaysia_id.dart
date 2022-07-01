import 'package:flutter/material.dart';

import 'package:uinumber/home.dart/sendmoney/sendmoney.dart';

class MalaysiaIdentificationform extends StatelessWidget {
  const MalaysiaIdentificationform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Text('Form for Malaysia'),

          //Expanfor New IC

          expansionForIC(),

          //Expan  for  passport

          expansionForPassport(),

          expansionForMyPR(),

          //buttsubmisssion
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
      ),
    );
  }
  //methods used

  Padding expansionForMyPR() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black)),
        //Expansion tile init
        child: ExpansionTile(
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
            //Expiry date

            Padding(
              padding: const EdgeInsets.only(
                  right: 50, left: 40, top: 10, bottom: 10),
              child: TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {},
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

  Padding expansionForPassport() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black)),

        //Expansion tile for form
        child: ExpansionTile(
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
                    'Passport',
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
            //Expiry date

            Padding(
              padding: const EdgeInsets.only(
                  right: 50, left: 40, top: 10, bottom: 10),
              child: TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {},
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

                  hintText: 'Passport Expirydate',
                  labelText: 'Passport Expirydate',
                  contentPadding: const EdgeInsets.all(8),
                ),
              ),
            ),

            //issue date
            Padding(
              padding: const EdgeInsets.only(
                  right: 50, left: 40, top: 10, bottom: 10),
              child: TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {},
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

                  hintText: 'Passport Issuedate',
                  labelText: 'Passport Issuedate',
                  contentPadding: const EdgeInsets.all(8),
                ),
              ),
            ),

            //dropdown
            const IssuedCountryDropDwon(),
          ],
        ),
      ),
    );
  }

  Padding expansionForIC() {
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
                    'New IC',
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
            ),
            //Expiry data
            Padding(
              padding: const EdgeInsets.only(
                  right: 50, left: 40, top: 10, bottom: 10),
              child: TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {},
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
                  labelText: 'Driver licence Expiry date',
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
