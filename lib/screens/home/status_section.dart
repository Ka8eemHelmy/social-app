import 'package:first_app_122/model/chat.dart';
import 'package:first_app_122/screens/home/widgets/status_widget.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  StatusSection({super.key});

  final List<String> names = [
    'Kareem',
    'Loay',
    'Yossef',
    'Marwan',
    // 'Mahmoud',
    // 'Mohamed',
    // "Mohamed",
    // 'Alaa',
    // "Youssef",
    // "Ahmed",
    // 'Esraa',
    // "Yassmeen",
    // 'Rehab',
    // "Yassmeen",
    // "Sohila",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return StatusWidget(
          chat: chats[index],
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          width: 12,
        );
      },
      itemCount: chats.length,
    );
  }
}
