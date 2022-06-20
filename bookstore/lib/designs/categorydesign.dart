import 'package:flutter/material.dart';

import 'llistpage.dart';

class Carddesign extends StatelessWidget {
  const Carddesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const ListPage()));
        },
        child: const Card(
          child: Text('category1'),
        ),
      ),
    );
  }
}
