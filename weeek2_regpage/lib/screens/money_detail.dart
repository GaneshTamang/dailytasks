import 'package:flutter/material.dart';
import 'package:registrationpage/screens/notification_page.dart';

class MoneyDetailPage extends StatelessWidget {
  final String sendamount;
  final String bankACNum;
  final String recipeintsRefrence;
  final String payDetails;
  const MoneyDetailPage(
      {Key? key,
      required this.sendamount,
      required this.bankACNum,
      required this.recipeintsRefrence,
      required this.payDetails})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Confirm'),
      // ),
      body: Center(
        child: ListView(
          children: [
            const SizedBox(
              height: 100,
            ),
            Text(
              'sendamount: MYR $sendamount ',
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            const SizedBox(
              height: 20,
            ),
            Text('bankACNum:\n$bankACNum',
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
            const SizedBox(
              height: 20,
            ),
            Text('recipeintsRefrence:\n $recipeintsRefrence',
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
            const SizedBox(
              height: 20,
            ),
            Text('payDetails:\n$payDetails',
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
            const SizedBox(
              height: 140,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              NotiPage(price: sendamount, acNo: bankACNum)));
                    },
                    child: const Text(
                      'OK Send',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('cancel'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
