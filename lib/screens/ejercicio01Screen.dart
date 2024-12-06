import 'package:flutter/material.dart';

class Ejercicio01screen extends StatelessWidget {
  const Ejercicio01screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejercicio 01"),
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Altura del cohete", style: TextStyle(fontSize: 24)),
              altura_input(),
              tiempo_input(),
              calcular_btn(context),
            ],
          )
        ],
      ),
    );
  }
}

TextEditingController _alturaInicial = TextEditingController();


Widget altura_input() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: TextField(
      controller: _alturaInicial,
      decoration: InputDecoration(
        labelText: "Altura inicial (hi) en metros",
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
    ),
  );
}

TextEditingController _tiempo = TextEditingController();

Widget tiempo_input() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: TextField(
      controller: _tiempo,
      decoration: InputDecoration(
        labelText: "Tiempo (t) en segundos",
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
        content: Text(evaluarAltura()),
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

String evaluarAltura() {
  double hi = double.parse(_alturaInicial.text);
  double t = double.parse(_tiempo.text);
  double h = hi + 0.5 * 20 * t * t;

  if (h >= 1000) {
    return "¡Lanzamiento ejecutado con exito! Altura alcanzada: $h m";
  } else {
    return "Lanzamiento fallido. Altura alcanzada: $h m";
  }
}
