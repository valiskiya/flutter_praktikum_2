import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageList = [
      'assets/images/1.jpg',
      'assets/images/2.png',
      'assets/images/3.jpg',
      'assets/images/4.jpg',
      'assets/images/5.jpeg',
      'assets/images/6.jpeg',
      'assets/images/7.jpg',
      'assets/images/8.jpeg',
      'assets/images/9.jpeg',
      'assets/images/10.jpg',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Galeri Offline')),
      body: ListView.builder(
        itemCount: imageList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(10),
            child: Image.asset(imageList[index]),
          );
        },
      ),
    );
  }
}
