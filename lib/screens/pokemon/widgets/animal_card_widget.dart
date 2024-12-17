import 'package:first_app_122/model/animal.dart';
import 'package:flutter/material.dart';

class AnimalCardWidget extends StatelessWidget {
  final Animal animal;
  final void Function()? onTap;
  const AnimalCardWidget({required this.animal, this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.zero,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Hero(
                tag: animal.name,
                child: Image.network(
                  animal.image,
                  // 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png',
                ),
              ),
            ),
            const SizedBox(height: 12,),
            Expanded(
              child: Text(
                animal.name,
                // 'Bulbasaur',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
