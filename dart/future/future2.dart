void main() async {
  print('Inicio del programa');

  try {
    String resultado = await getFibonacciSimple(12);
    print('Resultado: $resultado');
  } catch (e) {
    print('Error: $e');
  }

  print('Fin del programa');
}

Future<String> getFibonacciSimple(int n) async {
  return Future.delayed(Duration(seconds: 2), () {
    
    // 1. Si piden 0 o menos, devolvemos vacío
    if (n <= 0) return '';
    if (n == 1) return '0';

    // 2. Creamos variables para guardar los dos primeros números
    int a = 0;
    int b = 1;
    
    // Guardamos el primer número como texto de una vez
    // (Como vamos del último al primero, el '0' quedará al final)
    String textoResultado = '$a';

    // 3. Calculamos los siguientes números con un bucle
    for (int i = 1; i < n; i++) {
      // AQUÍ ESTÁ EL TRUCO PARA INVERTIR:
      // En lugar de poner el número nuevo al final, 
      // lo ponemos AL PRINCIPIO del texto anterior.
      textoResultado = '$b' + textoResultado;

      // Calculamos el siguiente Fibonacci
      int siguiente = a + b;
      a = b;
      b = siguiente;
    }

    return textoResultado;
  });
}// catch es agarrar
// fucher es algo que se ejecuta en siento tiempo
// empleando un future devolver  los 
// n primeros terminos de la serie de fibonachi
// se debe rtornar del ultimo al
// primer termino 
// ejemplo: 0,1,1,2,3,5,8,13
// retornar 138532110
// algorimia