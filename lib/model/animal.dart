class Animal {
  String name;
  String image;
  String? height;
  String? weight;
  List<String>? types;
  List<String>? weaknesses;

  Animal({
    required this.name,
    required this.image,
    this.height,
    this.types,
    this.weaknesses,
    this.weight,
  });
}

List<Animal> animals = [
  Animal(
    name: 'Cat',
    image: 'https://www.picng.com/upload/pokemon/png_pokemon_43710.png',
    // height: '0.4m',
    // weight: '6.9kg',
    // types: ['Grass', 'Poison', 'Grs', 'Poi alksd son', 'Graas d ss', 'Poiasd asd son', 'Graa sd asd asd ss', 'Poison', 'Grass', 'Poison'],
    // weaknesses: ['Fire', 'Flying', 'Psychic'],
  ),
  Animal(
    name: 'Dog',
    image: 'https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg',
    height: '0.7m',
    weight: '13.0kg',
    types: ['Fire'],
    weaknesses: ['Water', 'Ground', 'Rock'],
  ),
  Animal(
    name: 'Lion',
    image: 'https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg',
    height: '1.1m',
    weight: '30.0kg',
    types: ['Water'],
    weaknesses: ['Electric', 'Grass'],
  ),
  Animal(
    name: 'Tiger',
    image: 'https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg',
    height: '1.5m',
    weight: '60.0kg',
    types: ['Electric'],
    weaknesses: ['Ground'],
  ),
  Animal(
    name: 'Elephant',
    image: 'https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg',
    height: '2.0m',
    weight: '120.0kg',
    types: ['Psychic'],
    weaknesses: ['Bug', 'Ghost', 'Dark'],
  ),
  Animal(
    name: 'Giraffe',
    image: 'https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg',
  ),
  Animal(
    name: 'Zebra',
    image: 'https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg',
  ),
  Animal(
    name: 'Monkey',
    image: 'https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg',
  ),
  Animal(
    name: 'Panda',
    image: 'https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg',
  ),
  Animal(
    name: 'Penguin',
    image: 'https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg',
  ),
];