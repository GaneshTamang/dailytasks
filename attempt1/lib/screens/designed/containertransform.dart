import 'package:flutter/material.dart';

class Myconttrans extends StatelessWidget {
  final String boxmessage;
  //color can be passed as variable type
  final Color boxcolor;
  // final double trans;
  const Myconttrans({
    Key? key,
    required this.boxcolor,
    required this.boxmessage,
    // required this.trans
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Center(
        child: Container(
          height: 100,
          width: 100,
          alignment: Alignment.center,
          //here rotating from right is rataionz (floatvalue) and (-ve value in reverse direction)
          transform: Matrix4.rotationZ(-0.3),
          decoration: BoxDecoration(
              color: Colors.deepPurple,
              border: Border.all(color: Colors.black)),
          child: Text(
            boxmessage,
            style: const TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
