import 'package:flutter/material.dart';

import '../../models/missions.dart';
import '../../widgets/AppBarWidget/app_bar_nav_bar.dart';
import 'turkiye_mission_page.dart';
import '../Navegation_Bar/nav_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Mission> missions = [
    Mission(
      title: 'Turkiye earthquake',
      location: 'Kahramanmaras, Türkiye',
      date: '2023/02/06',
      image: 'assets/images/turkiye_earthquake.png',
    ),
    Mission(
      title: 'Ukraine War',
      location: 'Ukrayne',
      date: '2023-02-20',
      image: 'assets/images/ukraine_war.png',
    ),
    Mission(
      title: 'Congo floods',
      location: 'Kalehe, Rominican Republic of Congo',
      date: '2022-12-16',
      image: 'assets/images/congo_floods.png',
    ),
    Mission(
      title: 'Ciclone Freddy',
      location: 'Mozambique',
      date: '2023-03-12',
      image: 'assets/images/cyclone_freddy_mozambique.png',
    ),
    Mission(
      title: 'Syria earthquake',
      location: 'Syria',
      date: '2023-02-06',
      image: 'assets/images/syria_earthquake.png',
    ),
    Mission(
      title: 'Cyclone Mocha',
      location: 'Myanmar',
      date: '2023-05-14',
      image: 'assets/images/cyclone_mocha_myanmar.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: const AppBarWidget(text: 'Missions'),
      body: ListView.separated(
        itemCount: missions.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: Color.fromARGB(255, 198, 115, 115),
        ),
        itemBuilder: (BuildContext context, int index) {
          final mission = missions[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TurkieMissionPage(),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(top: 2),
              child: ListTile(
                leading: Image.asset(
                  mission.image,
                  width: 70,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                title: Text(
                  mission.title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(mission.location),
                    Text(mission.date),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
