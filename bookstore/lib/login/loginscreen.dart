import 'package:flutter/material.dart';

import 'package:local_database/screens/frontscreeen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool hide = true;
  void showhide() {
    hide = !hide;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Flexible(
              flex: 1,
              child: Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      image: DecorationImage(
                          image: AssetImage('assets/images/login.png'),
                          fit: BoxFit.cover)
                      //         image: DecorationImage(
                      //   image: AssetImage("assets/images/login.png"),
                      //   fit: BoxFit.fill,
                      // )
                      )),
            ),
            const SizedBox(
              height: 60,
            ),
            Flexible(
              flex: 1,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      autofocus: false,

                      //value to send after change

                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter email';
                        } else if (!value.contains('@')) {
                          return 'enter valid email';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                          hintText: 'Email',
                          labelText: 'Email',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      autofocus: false,
                      obscureText: hide,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter password';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: 'password',
                          labelText: 'password',
                          suffixIcon: IconButton(
                              onPressed: showhide,
                              icon: Icon(hide
                                  ? Icons.visibility
                                  : Icons.visibility_off)),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black))),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const FrontScreen()));
                      },
                      child: const Text('Sign in')),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      InkWell(
                        child: Text('Forgot passWord?'),
                      ),
                      InkWell(
                        child: Text('Signup'),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
