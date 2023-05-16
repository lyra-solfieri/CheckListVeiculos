import 'package:flutter/material.dart';
import 'dados_do_carro_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Check List Carros'),
      ),
      body: const DadosCarro(),
    );
  }
}
