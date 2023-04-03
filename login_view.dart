// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var button2 = button();
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 150, bottom: 50),
          child: Text(
            'APLIKASI\nPENDATAAN WARGA',
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        Stack(
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              height: 380,
              child: Card(
                margin: EdgeInsets.only(top: 50, left: 20, right: 20),
                color: Colors.brown[200],
                child: Column(
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                fillColor: Colors.grey[50],
                                filled: true))),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                fillColor: Colors.grey[50],
                                filled: true))),
                    button2,
                  ],
                ),
              ),
            ),
            Center(
                child: Image.asset(
              'assets/logo2.png',
              width: 150,
            )),
          ],
        )
      ],
    ));
  }

  ElevatedButton button() {
    return ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)), backgroundColor: Colors.red),
                      // ignore: sort_child_properties_last
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Text('Login'),
                      ));
  }
}