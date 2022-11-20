import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AndroidLab',
      // ignore: prefer_const_literals_to_create_immutables
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Detalle Sitio Turistico'),
        ),
        body: Center(
          child: Column(
              children: <Widget> [
                const SizedBox( height: 15),
                const Text('Machu Picchu', style: TextStyle(fontSize: 20)),
                const SizedBox(height: 30),
                const Image(image: AssetImage("assets/images/2.jpg")),
                const SizedBox( height: 15),
                const Text('Horario: 07:00 A 18:00 Horas', textAlign: TextAlign.left, style: TextStyle(fontSize: 20)),
                const SizedBox( height: 10),
                const Text('Temperatura: La ciudad Inca de Machu Picchu se encuentra a 2400 m.s.n.m. teniendo un clima cálido y húmedo. con temperaturas entre los 8° y 22°C,  '),
                const SizedBox( height: 10),
                const Text('Direccion: Cusco (provincia de Urubamba, distrito de Machupicchu) sobre el Valle Sagrado de los Incas, a 80 kilómetros al noroeste de la ciudad de Cusco'),
                const SizedBox( height: 15),
                const Text('Descripcion: Machu Picchu es una ciudadela inca '
                    'ubicada en las alturas de las montañas '
                    'de los Andes en Perú, sobre el valle del '
                    'río Urubamba. Se construyó en el siglo XV '
                    'y luego fue abandonada, y es famosa por '
                    'sus sofisticadas paredes de piedra seca que combinan enormes bloques sin el uso de un mortero, los edificios fascinantes que se relacionan con las alineaciones astronómicas y sus vistas panorámicas. '
                    'El uso exacto que tuvo sigue siendo un misterio.', style: TextStyle(fontSize: 14)),
                const SizedBox( height: 15),
        ],
        ),
        ),
    ),
    );
  }

}



