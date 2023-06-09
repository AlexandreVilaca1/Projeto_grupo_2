import 'package:flutter/material.dart';
import 'package:rise_up2/Pages/Profile/edit_profile.dart';
import '../Missions/main_page.dart';


class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Michael Scott'),
            accountEmail: const Text('michaelscott@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset('assets/images/michael_scott_header.png')),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.menu_book_sharp),
            title: const Text('Missions'),
            onTap: () {
              Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainPage(),
                      ),
                    ); 
            },
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {
              Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EditProfile(),
                      ),
                    ); 
            },
          ),
          const Divider(
            color: Colors.grey, // cor da linha (opcional)
            thickness: 1, // espessura da linha (opcional)
          ),
          ListTile(
            leading: const Icon(Icons.history_edu),
            title: const Text('Contribuitions'),
            onTap: () => print('pagina historico'),
          ),
          const Divider(
            color: Colors.grey, // cor da linha (opcional)
            thickness: 1, // espessura da linha (opcional)
          ),
          const ListTile(
            leading:  Icon(Icons.support_agent_outlined),
            title:  Text('Support'),
          ),
          const Divider(
            color: Colors.grey, // cor da linha (opcional)
            thickness: 1, // espessura da linha (opcional)
          ),
          const ListTile(
            leading:  Icon(Icons.exit_to_app),
            title:  Text('Exit'),
          ),
          Column(
            children: [
              const SizedBox(
                height: 300,
              ),
              ListTile(
                leading: const Icon(Icons.support_agent_outlined),
                title: const Text('Admin'),
                onTap: () => print('Entrada como admin'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
