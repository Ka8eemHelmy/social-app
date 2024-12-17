import 'package:first_app_122/model/chat.dart';
import 'package:first_app_122/screens/home/widgets/chat_widget.dart';
import 'package:flutter/material.dart';

class ConversationsSection extends StatelessWidget {
  const ConversationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return ChatWidget(
          chat: chats[index],
        );
      },
      separatorBuilder: (context, index) => SizedBox(
        height: 12,
      ),
      itemCount: chats.length,
    );
  }
}
