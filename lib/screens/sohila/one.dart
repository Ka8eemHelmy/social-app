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
        appBar: AppBar(title: const Text('Simple ListView')),
        body: ListView.separated(
          padding: const EdgeInsets.all(12),
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Row(
              children: [
                CircleAvatar(),
                SizedBox(width: 12,),
                Text('Eraa'),
              ],
            );
          }, separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 12,);
        },
        ),
      ),
    );
  }
}
