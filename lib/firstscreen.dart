
import 'package:flutter/material.dart';
import 'secondscreen.dart';

class FirstScreen extends StatelessWidget {
  // Controladores para los campos de texto
  final TextEditingController usuario = TextEditingController();
  final TextEditingController contrasena = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primera Pantalla'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Campo de texto para el nombre de usuario
            TextField(
              controller: usuario,
              decoration: InputDecoration(
                labelText: 'Usuario',
              ),
            ),
            SizedBox(height: 20.0),
            // Campo de texto para la contraseña
            TextField(
              controller: contrasena,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Contraseña',
              ),
            ),
            SizedBox(height: 20.0),
            // Botón para iniciar sesión
            ElevatedButton(
              onPressed: () {
                // Validar los datos de inicio de sesión
                String username = usuario.text.trim();
                String password = contrasena.text.trim();

                if (username == 'martin' && password == '1234') {
                  // Navegar a la segunda pantalla con datos
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondScreen(
                        data: 'Inicio de sesión exitoso!',
                      ),
                    ),
                  );
                } else {
                  // Mostrar mensaje de error si los datos son incorrectos
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Error de inicio de sesión'),
                      content: Text('Usuario o contraseña incorrectos.'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Aceptar'),
                        ),
                      ],
                    ),
                  );
                }
              },
              child: Text('Iniciar Sesión'),
            ),
          ],
        ),
      ),
    );
  }
}
