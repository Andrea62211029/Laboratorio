import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MeetupPage(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class MeetupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Firebase Meetup"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imagen en la parte superior
            Image.network(
              'https://img.freepik.com/vector-premium/grupo-personas-concepto-amistad-estilo-dibujos-animados-coloridos_3482-8504.jpg', // Reemplaza con la URL de la imagen correcta
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Fecha
                  const Row(
                    children: [
                      Icon(Icons.calendar_today),
                      SizedBox(width: 8),
                      Text("October 18, 2022", style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  // Ubicación
                  const Row(
                    children: [
                      Icon(Icons.location_on),
                      SizedBox(width: 8),
                      Text("San Francisco", style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  // Botones de "Logout" y "Profile"
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Logout"),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Profile"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Sección de "What we'll be doing"
                  const Text(
                    "What we'll be doing",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Join us for a day full of Firebase Workshops and Pizza!\n2 people going",
                  ),
                  const SizedBox(height: 10),
                  // Botones de "YES" y "NO"
                  Row(
                    children: [
                      OutlinedButton(
                        onPressed: () {},
                        child: const Text("YES"),
                      ),
                      const SizedBox(width: 10),
                      OutlinedButton(
                        onPressed: () {},
                        child: const Text("NO"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Sección de "Discussion"
                  const Text(
                    "Discussion",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  // Caja de texto para dejar un mensaje
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Leave a message",
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.send),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Mensajes anteriores
                  const Text("Foo Bar: Hi Bob!"),
                  const Text("Bob Katz: Hi Foo!"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

