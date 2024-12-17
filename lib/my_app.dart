import 'package:first_app_122/screens/tabbar/tabbar_screen.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ToastificationWrapper(
      child: MaterialApp(
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
