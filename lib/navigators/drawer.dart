
import 'package:app_evaluacion_mov2/main.dart';
import 'package:app_evaluacion_mov2/screens/ejercicio01Screen.dart';
import 'package:app_evaluacion_mov2/screens/ejercicio02Screen.dart';
import 'package:flutter/material.dart';

class Appdrawer extends StatelessWidget {
  const Appdrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, 
              children: [
                Text(
                  'Drawer',
                  style: TextStyle(
                    fontSize: 40, // Tamaño del texto
                    fontWeight: FontWeight.bold, // Texto en negrita
                    color: Colors.black, // Color del texto
                  ),
                ),
              ]
            ),
          ),
          ListTile(
            tileColor: const Color.fromARGB(255, 255, 255, 255),
            title: Text("Prueba"),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Prueba())),
          ),
          ListTile(
            tileColor: const Color.fromARGB(255, 255, 255, 255),
            title: Text("Ejercicio01"),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => Ejercicio01screen())),
          ),
          ListTile(
            tileColor: const Color.fromARGB(255, 255, 255, 255),
            title: Text("Ejercicio02"),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Ejercicio02screen())),
          )
            
        ],
      ),
    );
  }
}