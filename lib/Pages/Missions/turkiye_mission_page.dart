import 'package:flutter/material.dart';
import '../../palette.dart';
import '../Authentication/request_login.dart';
import 'main_page.dart';

class TurkieMissionPage extends StatefulWidget {
  const TurkieMissionPage({Key? key}) : super(key: key);

  @override
  State<TurkieMissionPage> createState() => _TurkieMissionPage();
}

class _TurkieMissionPage extends State<TurkieMissionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MainScreen(),
              ),
            );
          },
        ),
        backgroundColor: Colors.white,
        title: const Text(
          'Missions',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Image.asset(
              'assets/images/turkiye_earthquake.png',
              width: 350,
              height: 200,
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(top: 20, left: 25),
            padding: const EdgeInsets.only(bottom: 60),
            child: const Text(
              'Turkiye Earthquake',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RequestLogin(),
                        ),
              );
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Palette.pColor,
                padding: const EdgeInsets.symmetric(horizontal: 30),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            child: const Text(
              "Donate",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 15,
                letterSpacing: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
