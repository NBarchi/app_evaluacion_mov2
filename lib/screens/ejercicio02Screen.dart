import 'package:flutter/material.dart';

class Ejercicio02screen extends StatelessWidget {
  const Ejercicio02screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejercicio 02"),
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Distancia en el carrusel", style: TextStyle(fontSize: 24)),
              velocidad_input(),
              calcular_btn(context),
            ],
          )
        ],
      ),
    );
  }
}

TextEditingController _velocidadAngular = TextEditingController();

Widget velocidad_input() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: TextField(
      controller: _velocidadAngular,
      decoration: InputDecoration(
        labelText: "Velocidad angular (ω) en rad/s",
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
    ),
  );
}

Widget calcular_btn(BuildContext context) {
  return ElevatedButton(
    onPressed: () => calcular(context),
    child: Text("Calcular"),
  );
}

void calcular(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text("Resultado"),
        content: Text(calcularDistancia()),
        actions: [
          FilledButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Cerrar"),
          )
        ],
      );
    },
  );
}

String calcularDistancia() {
  double w = double.parse(_velocidadAngular.text);
  double t = 25.0;
  double distancia = w * t;

  return "La distancia recorrida es: $distancia radianes";
}
