import 'package:app_evaluacion_mov2/navigators/drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Prueba());
}

class Prueba extends StatelessWidget {
  const Prueba({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Cuerpo(),
    );
  }
}

class Cuerpo extends StatelessWidget {
  const Cuerpo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Prueba"),
      ),
      drawer: Appdrawer(),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              "https://images.unsplash.com/photo-1540198163009-7afda7da2945?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3",
              fit: BoxFit.cover,
            ),
          ),
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Nombre: Nicholas Barrera",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                SizedBox(height: 10),
                Text(
                  "Usuario de GitHub: nbarchi",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
