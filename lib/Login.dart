import 'package:flutter/material.dart';

class PageLoginy extends StatelessWidget {
  const PageLoginy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),

      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Hello, Selamat Datang Admin')
            ]

        ),
      ),
    );
  }
}