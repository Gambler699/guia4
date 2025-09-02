import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class TextFileScreen extends StatefulWidget {
  const TextFileScreen({super.key});

  @override
  State<TextFileScreen> createState() => _TextFileScreenState();
}

class _TextFileScreenState extends State<TextFileScreen> {
  String contenido = "";

  Future<void> leerArchivo() async {
    final texto = await rootBundle.loadString("assets/data/info.txt");
    setState(() {
      contenido = texto;
    });
  }

  @override
  void initState() {
    super.initState();
    leerArchivo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Archivo de Texto")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          contenido.isEmpty ? "Cargando archivo..." : contenido,
          style: const TextStyle(fontSize: 18),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
