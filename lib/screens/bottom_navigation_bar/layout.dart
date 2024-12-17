import 'package:first_app_122/screens/game/name_game_screen.dart';
import 'package:first_app_122/screens/home/chat_screen.dart';
import 'package:first_app_122/screens/pokemon/animals_screen.dart';
import 'package:first_app_122/social_screen.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  List<Widget> screens = [
    AnimalsScreen(),
    ChatScreen(),
    NameGameScreen(),
    SocialScreen(),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            activeIcon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.business_center_outlined,
            ),
            activeIcon: Icon(Icons.business_center_rounded),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark_border_rounded,
            ),
            activeIcon: Icon(Icons.bookmark_outlined),
            label: 'Fav',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_outlined,
            ),
            activeIcon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
