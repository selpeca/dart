void main() async {
  print('Inicio del programa');
  try {
    final value = await httpGet('https://api.nasa.com/aliens');
    print(value); //Se ejecuta despues del fin del programa
  } catch (error) {
    print('Tenemos un error: $error'); //Error controlado
  }
  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(
    const Duration(seconds: 3),
  ); // Espero que la linea llegue.
  //throw Exception('Error en la petición HTTP a $url');
  return 'Respuesta de la petición HTTP a $url';
}
