import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('ListView.builder')),
        body: ListView.builder(
          itemCount: 10, //
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(Icons.star),
              title: Text('Item ${index + 1}'),
              subtitle: Text('Subtitle ${index + 1}'),
            );
          },
        ),
      ),
    );
  }
}