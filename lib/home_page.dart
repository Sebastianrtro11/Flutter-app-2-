import 'package:flutter/material.dart';
import 'information_page.dart';
import 'example_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _visitCount = 0;

  void _navigateToInformation() {
    setState(() {
      _visitCount++;
    });
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => InformationPage(_visitCount)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Inicio",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Image.asset('images/logo.png', height: 40),
          ],
        ),
      ),
      drawer: const ExampleDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Bienvenido a la App de CIDTCA',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.cyan,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Explora la información sobre el proceso de paz en Colombia y los desafíos del desplazamiento forzoso.',
              style: TextStyle(fontSize: 16, height: 1.5),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: _navigateToInformation,
              icon: const Icon(Icons.info, size: 24),
              label: const Text('Ir a Información'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                textStyle: const TextStyle(fontSize: 18),
                backgroundColor: Colors.cyan,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Has visitado la página de Información $_visitCount veces.',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
