void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Inteligencia',
    'isAlive': true,
  };

  final ironman = Hero.fromJson(rawJson);

  // final ironman = Hero(name: 'Ironman', power: 'Inteligencia');

  print(ironman);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, this.power = 'Sin poder', this.isAlive = true});

  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'Sin nombre',
      power = json['power'] ?? 'Sin poder',
      isAlive = json['isAlive'] ?? false;

  @override
  String toString() {
    return 'Hero: $name, Power: $power, isAlive: ${isAlive ? 'Sí' : 'No'}';
  }
}
