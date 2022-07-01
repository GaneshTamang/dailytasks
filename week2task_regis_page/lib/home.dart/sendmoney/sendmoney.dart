import 'package:flutter/material.dart';

import '../country_regpage/dropdowns.dart/mybankdropdown.dart';

class SendMoneyPage extends StatelessWidget {
  const SendMoneyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Container(
            margin: const EdgeInsets.all(6),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.black)),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
          ),
          title: const Text(
            'Send Money',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Enter Amount',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              Container(
                height: 50,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black)),
                child: Row(
                  children: [
                    const Text(
                      'MYR',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Container()
                  ],
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              //price
              Row(
                children: const [
                  Expanded(
                      flex: 1,
                      child: Text(
                        '123',
                        style: TextStyle(fontSize: 15),
                      )),
                  Expanded(flex: 1, child: Text('123')),
                  Expanded(flex: 1, child: Text('123')),
                ],
              ),
              //heading bank name
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Bank Name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              BankSelectDropdown()
            ],
          ),
        ));
  }
}
