import 'package:flutter/material.dart';
import 'package:local_database/screens/booklist/booklist_page.dart';

class DesignedContainer extends StatelessWidget {
  final Color mycolor;
  final String categoryname;
  const DesignedContainer(
      {Key? key, required this.mycolor, required this.categoryname})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const BooklistScreen()));
      },
      child: Container(
        // height: 400,
        // width: 150,
        decoration: BoxDecoration(
          color: mycolor,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            categoryname,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
