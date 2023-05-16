import 'package:checklistcar/acessorios_pertences.dart';
import 'package:flutter/material.dart';

class DadosCarro extends StatefulWidget {
  const DadosCarro({super.key});

  @override
  DadosCarroState createState() {
    return DadosCarroState();
  }
}

class DadosCarroState extends State<DadosCarro> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(labelText: 'Cliente'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'digite o nome do Cliente';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Veiculo'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'digite o tipo de veiculo/nome';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Cor'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'digite a cor';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'E-mail'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'digite o E-mail do cliente';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Telefone/Celular'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'digite o telefone/celular do cliente';
                }
                return null;
              },
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Outro Telefone/Celular'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'digite o telefone/celular do cliente';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Ano/Modelo'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'digite o ano/modelo do carro';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Telefone/Celular'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'digite o telefone/celular do cliente';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Placa'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'digite a placa do carro';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Chassi'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'digite o chassi do carro';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Km'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'digite os km rodados';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  // if (_formKey.currentState!.validate()) {
                  //   ScaffoldMessenger.of(context).showSnackBar(
                  //     const SnackBar(content: Text('processando dados')),
                  //   );
                  // }
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AcessoriospPertences()),
                  );
                },
                child: const Text('Ir para acessórios'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
