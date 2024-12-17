import 'package:first_app_122/model/chat.dart';
import 'package:first_app_122/widgets/profile_pic_widget.dart';
import 'package:flutter/material.dart';

class StatusWidget extends StatelessWidget {
  final Chat chat;

  const StatusWidget({
    required this.chat,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePicWidget(
          image: chat.image,
          isOnline: chat.isOnline,
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          chat.name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
