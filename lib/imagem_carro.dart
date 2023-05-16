import 'package:flutter/material.dart';

class ImagemCarro extends StatefulWidget {
  const ImagemCarro({super.key});

  @override
  State<ImagemCarro> createState() => _ImagemCarroState();
}

class _ImagemCarroState extends State<ImagemCarro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image/Análise'),
      ),
      body: Center(
        child: Column(
          children: [
            Center(
              child: IconButton(
                onPressed: () => {},
                icon: const Icon(
                  Icons.image,
                  size: 100,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
