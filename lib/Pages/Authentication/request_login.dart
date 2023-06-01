import 'package:flutter/material.dart';
import 'package:rise_up2/Pages/Navegation_Bar/nav_bar.dart';

import 'login.dart';
import 'regist.dart';

// ignore: use_key_in_widget_constructors
class RequestLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          color: Colors.black,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NavBar(),
              ),
            );
          },
        ),
        backgroundColor: Colors.white,
        title: const Text(
          'Regist',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 60, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            //----------------------------------------Rise Up
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset('assets/images/letra.png'),
            ),
            //----------------------------------------Texto baixo do rise Up
            const Text(
              'If you want to help, please do the login :)',
              textAlign: TextAlign.center,
            ),
            //----------------------------------------Login
            const SizedBox(
              height: 160,
            ),
            Container(
              height: 60,
              padding: const EdgeInsets.only(left: 30, right: 30),
              alignment: Alignment.centerLeft,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(3),
                ),
              ),
              child: SizedBox.expand(
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Login",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                ),
              ),
            ),
            //----------------------------------------Register
            const SizedBox(
              height: 60,
            ),
            Container(
              height: 60,
              padding: const EdgeInsets.only(left: 30, right: 30),
              alignment: Alignment.centerLeft,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(3),
                ),
              ),
              child: SizedBox.expand(
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Register",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegistPage(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
