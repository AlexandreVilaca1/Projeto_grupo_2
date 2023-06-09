import 'package:flutter/material.dart';
import '../../widgets/ImagesWidget/images.dart';
import '../../widgets/TextWidgets/description_text.dart';
import '../../widgets/TextWidgets/mission_title_text.dart';
import '../../widgets/ButtonsWidgets/segmentedcontrollapp.dart';
import '../../widgets/TextWidgets/type_donation_title.dart';
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
                builder: (context) => const MainPage(),
              ),
            );
          },
        ),
        backgroundColor: Colors.white,
        title: const Text(
          'Turkye Mission',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
           Images(imagePath: 'assets/images/turkiye_earthquake.png'),
           MissionTitleText(text: 'Turkiye Mission'),
           DescriptionText(text: 'On 6th of February in Kahramanmaras, Türkiye, an earthquake measuring  7.8 on Richter scale occurred, the earthquake destroyed 214,000 buildings, killing 46,000 people.'),
           TypeDonationTitle(text: 'How you would like to donate?'),
           SegmentedControlApp(),
        ],
      ),
    );
  }
}
