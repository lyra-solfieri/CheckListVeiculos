import 'package:checklistcar/kilometragem.dart';
import 'package:flutter/material.dart';

List<Map<String, dynamic>> acessoriosPertences = [
  {'name': 'Tapete', 'selected': false},
  {'name': 'Triangulo', 'selected': false},
  {'name': 'Aparelho de som', 'selected': false},
  {'name': 'Antena', 'selected': false},
  {'name': 'Manual e Docs', 'selected': false},
  {'name': 'Macaco', 'selected': false},
  {'name': 'Mod.Amplificador', 'selected': false},
  {'name': 'Pneu de estepe', 'selected': false},
  {'name': 'Chave de roda', 'selected': false},
  {'name': 'Extintor', 'selected': false},
  {'name': 'Óculos', 'selected': false},
  {'name': 'Livros', 'selected': false},
  {'name': 'Tablet', 'selected': false},
  {'name': 'Celular', 'selected': false},
  {'name': 'Compras', 'selected': false},
  {'name': 'Cadeira de criança', 'selected': false},
  {'name': 'Mochila', 'selected': false},
  {'name': 'Relogio', 'selected': false},
];

class AcessoriospPertences extends StatefulWidget {
  const AcessoriospPertences({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AcessoriospPertencesState createState() => _AcessoriospPertencesState();
}

class _AcessoriospPertencesState extends State<AcessoriospPertences> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acessórios/Pertences'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: acessoriosPertences.length,
              itemBuilder: (BuildContext context, int index) {
                return CheckboxListTile(
                  title: Text(acessoriosPertences[index]['name']),
                  value: acessoriosPertences[index]['selected'],
                  onChanged: (bool? newValue) {
                    setState(() {
                      acessoriosPertences[index]['selected'] = newValue!;
                    });
                  },
                );
              },
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
                        builder: (context) => const Kilometragem()),
                  );
                },
                child: const Text('Confirm'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}






//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Acessórios/Pertences'),
//       ),
//       body: ListView.builder(
//         itemCount: acessoriosPertences.length,
//         itemBuilder: (BuildContext context, int index) {
//           return CheckboxListTile(
//             title: Text('${acessoriosPertences.toString().length}'),
//             value: acessoriosPertences[],
//             onChanged: (newValue) {
//               print("Before: $checked");
//               setState(() {
//                 checked[index] = newValue!;
//               });
//               print("After: $checked");
//             },
//           );
//         },
//       ),
//     );
//   }
// }


// // return CheckboxListTile(
// //   title: Text(acessoriosPertences[index]),
// //   value: checked[index],
// //   onChanged: (newValue) {
// //     print("Before: $checked");
// //     setState(() {
// //       checked[index] = newValue!;
// //     });
// //     print("After: $checked");
// //   },
// // );



// // body: CheckboxListTile(
// //   title: Text('Checkbox title'),
// //   subtitle: Text('Checkbox subtitle'),
// //   secondary: Icon(Icons.two_wheeler),
// //   value: true,
// //   onChanged: (newValue) {
// //     // do something with the new value
// //   },
// //   controlAffinity: ListTileControlAffinity.trailing,
// // ),
