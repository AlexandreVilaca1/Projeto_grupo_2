import 'package:flutter/material.dart';

import '../models/user.dart';
import '../utils/user_preferense.dart';
import '../widgets/button_submit.dart';
import '../widgets/profile.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.blueGrey),
        backgroundColor: Colors.white,
        title: const Text(
          'Missions',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 60, left: 40, right: 40),
        child: Column(
          children: [
            ProfileWidget(
              imagePath: user.imagePath,
              onClicked: () async {},
            ),
            profileNameWidget(user),
            buildName(user, 'First Name'),
            buildName(user, "Last Name"),
            buildName(user, "E-Mail Address"),
            buildName(user, "Password"),
            const SizedBox(height: 24),
            Center(
              child: buildSubmitButton(user),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildName(User user, String name) => Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            // autofocus: true,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: '${name}',
              labelStyle: const TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            style: const TextStyle(fontSize: 20),
          ),
        ],
      );
}

Widget profileNameWidget(User user) => Column(
      children: [
        Text('Hi, ${user.name}',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: Colors.black,
            )),
      ],
    );

Widget buildSubmitButton(User user) =>
    ButtonSubmitWidget(text: 'Submit', onclicked: () {});
