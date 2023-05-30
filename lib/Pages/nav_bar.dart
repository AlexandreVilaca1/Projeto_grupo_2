import 'package:flutter/material.dart';


class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('David Costa'),
            accountEmail: const Text('davidcosta@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset('assets/images/logo.png')),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.menu_book_sharp),
            title: const Text('Missions'),
            onTap: () => print('pagina missões'),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () => print('pagina perfil'),
          ),
          const Divider(
            color: Colors.grey, // cor da linha (opcional)
            thickness: 1, // espessura da linha (opcional)
          ),
          ListTile(
            leading: const Icon(Icons.history_edu),
            title: const Text('contribuitions'),
            onTap: () => print('pagina historico'),
          ),
          const Divider(
            color: Colors.grey, // cor da linha (opcional)
            thickness: 1, // espessura da linha (opcional)
          ),
          ListTile(
            leading: const Icon(Icons.support_agent_outlined),
            title: const Text('Support'),
            onTap: () => print('pagina Support'),
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
