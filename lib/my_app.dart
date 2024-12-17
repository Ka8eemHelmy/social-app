import 'package:first_app_122/screens/bottom_navigation_bar/layout.dart';
import 'package:first_app_122/screens/game/name_game_screen.dart';
import 'package:first_app_122/screens/home/chat_screen.dart';
import 'package:first_app_122/screen12.dart';
import 'package:first_app_122/screens/login/login_screen.dart';
import 'package:first_app_122/screens/pokemon/animals_screen.dart';
import 'package:first_app_122/screens/tabbar/tabbar_screen.dart';
import 'package:first_app_122/social_screen.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      child: const MaterialApp(
        // home: NameGameScreen(),
        // home: SocialScreen(),
        // home: ChatScreen(),
        // home: AnimalsScreen(),
        // home: HomeLayout(),
        home: TabBarScreen(),
        // home: LoginScreen(),
      ),
    );
  }
}
