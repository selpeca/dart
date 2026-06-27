void main() {
  print(greetEveryone());
  print('Suma ${addTwoNumbers(20, 30)}');
  print('Suma Opcional ${addTwoNumbersOptional(20)}');
  print(greetPerson(name: 'Sergio'));
  print(greetPerson(name: 'Sergio', message: 'Buenos días'));
}

String greetEveryone() => 'Hello, everyone!';
int addTwoNumbers(int a, int b) => a + b;
int addTwoNumbersOptional(int a, [int b = 0]) => a + b;

String greetPerson({required String name, String message = 'Hola'}) {
  return '$message, $name!';
}
