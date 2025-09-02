import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Imágenes")),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text("Imagen local:", style: TextStyle(fontSize: 18)),
          const SizedBox(height: 10),
          Image.asset("assets/images/paisaje.jpeg"),
          const SizedBox(height: 20),
          const Text("Imagen de Internet:", style: TextStyle(fontSize: 18)),
          const SizedBox(height: 10),
          Image.network("https://picsum.photos/400/200"),
        ],
      ),
    );
  }
}
