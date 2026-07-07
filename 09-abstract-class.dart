void main() {
  final windPlant = WindPlant(initialEnergy: 9);
  print('wind ${chargePhone(windPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy to charge the phone');
  }

  return plant.energyLeft - 10;
}

// Definición de un ENUM
enum PlantType { nuclear, wind, water }

// Clase Abstracta
abstract class EnergyPlant {
  double energyLeft;
  PlantType type;

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
    : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

class WaterPlant extends EnergyPlant {
  WaterPlant({required double energyLeft})
    : super(energyLeft: energyLeft, type: PlantType.water);

  @override
  void consumeEnergy(double amount) {
    if (energyLeft >= amount) {
      energyLeft -= amount;
      print('Water plant consumed $amount energy. Energy left: $energyLeft');
    } else {
      print('Not enough energy in water plant.');
    }
  }
}
