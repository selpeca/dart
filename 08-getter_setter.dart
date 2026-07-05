void main() {
  final mySquare = Square(side: 10);

  mySquare.side = -4;

  print('Área del cuadrado: ${mySquare.area}');
}

class Square {
  double _side; // side * side

  Square({required double side}) : _side = side;

  double get area {
    return _side * _side;
  }

  set side(double value) {
    print('setting new value $value');

    if (value < 0) throw ArgumentError('El lado debe ser positivo');
    _side = value;
  }

  double calculateArea() {
    return _side * _side;
  }
}
