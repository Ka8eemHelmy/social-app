import 'package:first_app_122/screens/home/conversations_section.dart';
import 'package:first_app_122/screens/home/status_section.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
            'https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg',
          ),
        ),
        title: const Text(
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
              child: const Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.5),
              child: const Icon(
                Icons.edit,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 12,
          ),
          const SearchBar(
            hintText: 'Search',
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(height: 120, child: StatusSection()),
          const SizedBox(
            height: 12,
          ),
          const Expanded(child: ConversationsSection()),
        ],
      ),
    );
  }
}
