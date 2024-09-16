import 'package:flutter/material.dart';
import 'home_page.dart';
import 'information_page.dart';

class ExampleDrawer extends StatelessWidget {
  const ExampleDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, 
        children: [
          Column(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.cyan,
                ),
                child: Column(
                  children: [
                    Image.asset('images/logo.png', height: 80),
                    const SizedBox(height: 10),
                    const Text(
                      'Menú',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Inicio'),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.info),
                title: const Text('Información'),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => InformationPage(0)),
                  );
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20), // Espaciado inferior
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('images/user_avatar.png'), // Asegúrate de que el avatar exista
                ),
                const SizedBox(height: 10),
                const Text(
                  'Richard',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
