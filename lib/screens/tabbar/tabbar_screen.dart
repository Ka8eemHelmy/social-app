import 'package:first_app_122/screens/pokemon/animals_screen.dart';
import 'package:flutter/material.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 42,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabBar Screen'),
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Notifications',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Notifications',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Notifications',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Notifications',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Notifications',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Notifications',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Notifications',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Notifications',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Notifications',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Notifications',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Notifications',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Notifications',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Notifications',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Notifications',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: TabBarView(
                  children: [
                    AnimalsScreen(),
                    Text('Home2'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                    Text('Home3'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
