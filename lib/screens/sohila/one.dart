import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Simple ListView')),
        body: ListView.separated(
          padding: EdgeInsets.all(12),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Row(
              children: [
                CircleAvatar(),
                SizedBox(width: 12,),
                Text('Eraa'),
              ],
            );
          }, separatorBuilder: (BuildContext context, int index) {
            return SizedBox(height: 12,);
        },
        ),
      ),
    );
  }
}
