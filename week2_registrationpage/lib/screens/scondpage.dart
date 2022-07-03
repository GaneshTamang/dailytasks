import 'package:flutter/material.dart';
import 'package:registrationpage/registrationforms/dropdowns.dart/mybank_drop_down.dart';

class SendMoneyPage extends StatelessWidget {
  const SendMoneyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _setappbar(context),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, top: 30, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const _GetAmountHeader(),
                //set amount textfield
                // _setAmountPrice(),
                TextFormField(
                  validator: (cntrlrvalue) {
                    if (cntrlrvalue != null && cntrlrvalue.length < 14) {
                      return 'enter atleast 14 char';
                    }
                    return null;
                  },
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    prefixIcon: Text('Myr'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 172, 106, 106),
                          width: 1.5),
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
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('Fees & Charges RM 0.00'),
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
                const BankSelectDropdown(),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          const BorderSide(color: Colors.black, width: 2),
                    ),

                    focusedBorder: OutlineInputBorder(
                      gapPadding: 0.0,
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1.5),
                    ),
                    // focusedBorder: OutlineInputBorder(

                    hintText: '1510 234 5678',
                    labelText: 'Bank Account Number',

                    contentPadding: const EdgeInsets.all(8),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          const BorderSide(color: Colors.black, width: 2),
                    ),

                    focusedBorder: OutlineInputBorder(
                      gapPadding: 0.0,
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1.5),
                    ),
                    // focusedBorder: OutlineInputBorder(

                    hintText: "Brother's Allowance",
                    labelText: "Recipient's Refrence",

                    contentPadding: const EdgeInsets.all(8),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          const BorderSide(color: Colors.black, width: 2),
                    ),

                    focusedBorder: OutlineInputBorder(
                      gapPadding: 0.0,
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1.5),
                    ),
                    // focusedBorder: OutlineInputBorder(

                    hintText: "October",
                    labelText: "Other Payment Details",

                    contentPadding: const EdgeInsets.all(8),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                ElevatedButton(
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => null));
                    },
                    child: Container(
                        padding: const EdgeInsets.only(
                            left: 100, right: 110, top: 15, bottom: 15),
                        child: const Text(
                          'Continue',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )))
              ],
            ),
          ),
        ));
  }

  AppBar _setappbar(BuildContext context) {
    return AppBar(
      leading: Container(
        margin: const EdgeInsets.all(6),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.black)),
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
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
      elevation: 0,
    );
  }

  Container _setAmountPrice() {
    return Container(
      height: 50,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black)),
      child: Row(
        children: [
          const Text(
            'MYR',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Container()
        ],
      ),
    );
  }
}

class _GetAmountHeader extends StatelessWidget {
  const _GetAmountHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Enter Amount',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
    );
  }
}
