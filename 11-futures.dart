/**
 * Son como las promesas de JS
 * Valores que no están disponibles de inmediato,
 * pero que estarán disponibles en el futuro
 */

void main() {
  print('Inicio del programa');

  httpGet('https://api.nasa.com/aliens')
      .then((value) => print(value)) //Se ejecuta despues del fin del programa
      .catchError((error) {
        print('Tenemos un error: $error'); //Error controlado
      });

  print('Fin del programa');
}

Future<String> httpGet(String url) {
  // Future.delayed es un timeout
  return Future.delayed(const Duration(seconds: 3), () {
    throw Exception('Error en la petición HTTP a $url');
    //return 'Respuesta de la petición HTTP a $url';
  });
}
