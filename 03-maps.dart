void main() {
  final pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': ['impostor'],
    'sprites': {1: 'ditto/front.png', 2: 'ditto/back.png'},
  };
  // final pokemons = {1: 'Ditto', 2: 'Pikachu'};
  print(pokemon);
  print('Name: ${pokemon['name']}');
  print('Sprite ${pokemon['sprites']}');
  final sprites = pokemon['sprites'] as Map<int, String>;
  print('Back: ${sprites[2]}');
  print('Front: ${sprites[1]}');
}
