import 'package:first_app_122/model/chat.dart';
import 'package:first_app_122/widgets/profile_pic_widget.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  final Chat chat;

  const ChatWidget({
    required this.chat,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfilePicWidget(
          image: chat.image,
          isOnline: chat.isOnline,
        ),
        SizedBox(
          width: 12,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                chat.name,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                chat.message,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Text(
          chat.date,
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
