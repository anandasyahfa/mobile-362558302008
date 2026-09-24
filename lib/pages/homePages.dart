import 'package:flutter/material.dart';
import 'package:modul_03/pages/detailPages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DetailPage()),
            );
          },
          child: const Text('Buka Halaman Detail'),
        ),
      ),
    );
  }
}