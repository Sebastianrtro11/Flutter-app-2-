import 'package:flutter/material.dart';

class InformationPage extends StatelessWidget {
  final int visitCount;

  InformationPage(this.visitCount, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Información",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Image.asset('images/logo.png', height: 40),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Centro de Investigación y Desarrollo Tecnológico (CIDTCA)',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.cyan,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'El Centro de Investigación y Desarrollo Tecnológico en Ciencias Aplicadas (CIDTCA) '
              'está desarrollando una profunda investigación sobre los últimos avances del proceso de paz en Colombia, '
              'enfocándose en los efectos directos e indirectos que este ha tenido sobre el fenómeno del desplazamiento forzoso. '
              'En términos positivos, el proceso de paz ha permitido que algunas comunidades desplazadas puedan regresar a sus territorios...',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('images/pantalla.jpeg'),
            ),
            const SizedBox(height: 20),
            Text(
              'Has visitado esta página $visitCount veces.',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Información clave:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              '1. El proceso de paz ha permitido la reconstrucción social en áreas afectadas.\n'
              '2. Retos persistentes como la falta de infraestructura en ciertas regiones.\n'
              '3. La plataforma Samay busca educar a los jóvenes en zonas de baja conectividad.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
