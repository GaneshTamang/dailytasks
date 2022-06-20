import 'package:bookstore/designs/categorydesign.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('catigories'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.amber,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.save,
        ),
      ),
      body: Center(
        child: Column(
          children: const [
            Carddesign(),
            Carddesign(),
            Carddesign(),
            Carddesign(),
          ],
        ),
      ),
    );
  }
}
