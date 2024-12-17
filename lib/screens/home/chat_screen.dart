import 'package:first_app_122/screens/home/conversations_section.dart';
import 'package:first_app_122/screens/home/status_section.dart';
import 'package:first_app_122/screens/home/widgets/chat_widget.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
            'https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg',
          ),
        ),
        title: Text(
          'Chats',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.5),
              child: Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.5),
              child: Icon(
                Icons.edit,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 12,
          ),
          SearchBar(
            hintText: 'Search',
          ),
          SizedBox(
            height: 12,
          ),
          SizedBox(height: 120, child: StatusSection()),
          SizedBox(
            height: 12,
          ),
          Expanded(child: ConversationsSection()),
        ],
      ),
    );
  }
}
