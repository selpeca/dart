void main() async {
  print('Inicio del programa');
  try {
    final value = await httpGet('https://api.nasa.com/aliens');
    print(value); //Se ejecuta despues del fin del programa
  } on Exception catch (error) {
    print('Tenemos un error: No hay parametros en la URL $error');
  } catch (error) {
    print('Tenemos un error: $error'); //Error controlado
  } finally {
    print('Esto se ejecuta siempre');
  }
  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(
    const Duration(seconds: 3),
  ); // Espero que la linea llegue.
  throw new Exception('No hay parametros en la URL');
  // return 'Respuesta de la petición HTTP a $url';
}
