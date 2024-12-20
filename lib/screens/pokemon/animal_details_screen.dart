import 'package:first_app_122/model/animal.dart';
import 'package:first_app_122/screens/pokemon/widgets/type_chip.dart';
import 'package:flutter/material.dart';

class AnimalDetailsScreen extends StatelessWidget {
  final Animal animal;

  const AnimalDetailsScreen({required this.animal, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          animal.name,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Card(
              margin: const EdgeInsetsDirectional.only(
                start: 12,
                end: 12,
                bottom: 100,
                top: 120,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Text(
                    animal.name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  if (animal.height != null)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Height: ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          animal.height ?? '',
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  const SizedBox(
                    height: 12,
                  ),
                  if (animal.weight != null)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Weight: ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          animal.weight ?? '',
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    'Types:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      ...List.generate(
                        animal.types?.length ?? 0,
                        (index) {
                          return TypeChip(label: animal.types?[index] ?? '', color: Colors.orange,);
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          PositionedDirectional(
            start: MediaQuery.of(context).orientation == Orientation.portrait
                ? MediaQuery.of(context).size.width / 3.5
                : MediaQuery.of(context).size.width / 2.5,
            child: Hero(
              tag: animal.name,
              child: Image.network(
                animal.image,
                width: 200,
                height: 200,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
