// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Text('Hello World!'),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'firstscreen.dart'; // Importa tu FirstScreen
import 'secondscreen.dart'; // Importa tu SecondScreen

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Ruta inicial de la aplicación
      routes: {
        '/': (context) => FirstScreen(), // Ruta para la primera pantalla
        '/second': (context) => SecondScreen(data: 'Hola desde la Primera Pantalla'), // Ruta para la segunda pantalla
      },
    );
  }
}
