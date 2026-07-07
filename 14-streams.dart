void main() {
  emitNumbers().listen((value) {
    print('Valor del stream: $value');
  });
}

Stream<int> emitNumbers() {
  return Stream.periodic(Duration(seconds: 1), (value) {
    return value;
  }).take(5);
}
