import 'package:flutter/material.dart';

import '../models/missions.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Mission> missions = [
    Mission(
      title: 'Mission 1',
      location: 'Space Station 1',
      date: '2023-06-01',
      image: 'assets/images/logo.png',
    ),
    Mission(
      title: 'Mission 2',
      location: 'Space Station 2',
      date: '2023-06-15',
      image: 'assets/images/logo.png',
    ),
    Mission(
      title: 'Mission 3',
      location: 'Space Station 2',
      date: '2023-06-15',
      image: 'assets/images/logo.png',
    ),
    Mission(
      title: 'Mission 4',
      location: 'Space Station 2',
      date: '2023-06-15',
      image: 'assets/images/logo.png',
    ),
    Mission(
      title: 'Mission 2',
      location: 'Space Station 2',
      date: '2023-06-15',
      image: 'assets/images/logo.png',
    ),
    Mission(
      title: 'Mission 2',
      location: 'Space Station 2',
      date: '2023-06-15',
      image: 'assets/images/logo.png',
    ),
    // Add more missions as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Colors.white, // Set the background color of AppBar to white
        title: const Text(
          'Missions',
          style: TextStyle(
              color: Colors.black), // Set the text color of AppBar to black
        ),
      ),
      body: ListView.separated(
        itemCount: missions.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: Color.fromARGB(255, 198, 115, 115),
        ),
        itemBuilder: (BuildContext context, int index) {
          final mission = missions[index];
          return Container(
              margin: const EdgeInsets.only(bottom: 10, top: 10),
              child: Expanded(
                child: ListTile(
                  leading: Image.asset(
                    mission.image,
                    width: 80,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  title: Text(mission.title),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(mission.location),
                      Text(mission.date),
                    ],
                  ),
                ),
              ));
        },
      ),
    );
  }
}
