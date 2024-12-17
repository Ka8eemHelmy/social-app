import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('ListView.separated')),
        body: ListView.separated(
          itemCount: 5, //
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.star),
              title: Text('Item ${index + 1}'),
              subtitle: Text('Subtitle ${index + 1}'),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(); //
          },
        ),
      ),
    );
  }
}