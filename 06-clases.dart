void main() {
  final superman = Hero(name: 'Superman', power: 'Flight');
  final deadpool = Hero(name: 'Deadpool', power: 'Regeneration');
  final logan = Hero(name: 'Logan');

  print(superman.name);
  print(deadpool.name);
  print(deadpool.toString());
  print(logan.toString());
}

class Hero {
  String name;
  String power;

  // Hero(String pName, String pPower) : name = pName, power = pPower;
  Hero({required this.name, this.power = 'Sin poder'});

  @override
  String toString() {
    return 'Hero: $name, Power: $power';
  }
}
