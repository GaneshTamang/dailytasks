import 'package:flutter/material.dart';

import 'package:local_database/bookwidget/desiged_cat_caontainer.dart';

class FrontScreen extends StatelessWidget {
  const FrontScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Choose yourcategory'),
        ),
        body: Container(
          color: const Color.fromARGB(255, 112, 35, 201),
          child: Column(
            children: [
              const Flexible(
                  flex: 1,
                  child: SizedBox(
                    height: 80,
                  )),
              Flexible(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Flexible(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: DesignedContainer(
                                mycolor: Colors.pinkAccent,
                                categoryname: 'Economics'),
                          )),
                      Flexible(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: DesignedContainer(
                                mycolor: Colors.blueAccent,
                                categoryname: 'Novel'),
                          )),
                    ],
                  )),
              Flexible(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Flexible(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: DesignedContainer(
                                mycolor: Colors.redAccent,
                                categoryname: 'Math'),
                          )),
                      Flexible(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: DesignedContainer(
                                mycolor: Colors.amber, categoryname: 'Science'),
                          )),
                    ],
                  )),
              const Flexible(
                  flex: 1,
                  child: SizedBox(
                    height: 40,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
