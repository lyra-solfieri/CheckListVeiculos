import 'package:checklistcar/imagem_carro.dart';
import 'package:flutter/material.dart';

class Kilometragem extends StatefulWidget {
  const Kilometragem({super.key});

  @override
  State<Kilometragem> createState() => _KilometragemState();
}

class _KilometragemState extends State<Kilometragem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kilometros Rodados'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.speed,
              size: 200.0,
              color: Colors.red,
            ),
            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Km rodados',
              ),
            ),
            ButtonBar(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Confirm the checkbox lists
                    // Do something else
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ImagemCarro()),
                    );
                  },
                  child: const Text('Confirm'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
