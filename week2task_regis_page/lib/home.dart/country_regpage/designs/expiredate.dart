import 'package:flutter/material.dart';

class DateExpire extends StatefulWidget {
  const DateExpire({Key? key}) : super(key: key);

  @override
  State<DateExpire> createState() => _DateExpireState();
}

class _DateExpireState extends State<DateExpire> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 50, left: 40, top: 10, bottom: 10),
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
    );
  }
}
