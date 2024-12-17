import 'package:first_app_122/model/animal.dart';
import 'package:first_app_122/screens/pokemon/animal_details_screen.dart';
import 'package:first_app_122/screens/pokemon/widgets/animal_card_widget.dart';
import 'package:flutter/material.dart';

class AnimalsScreen extends StatelessWidget {
  const AnimalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          'Poke App',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(12),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          ...List.generate(
            animals.length,
            (index) {
              return AnimalCardWidget(
                animal: animals[index],
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return AnimalDetailsScreen(
                          animal: animals[index],
                        );
                      },
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
