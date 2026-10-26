void main(){
  final int pesos = 20000;
  double precioDolar = 3200;
  convert(pesos, precioDolar);


}

convert(pesos,[precioDolar = 3000]){ // function con parametro opcional
  double resultado = pesos / precioDolar;
  print("El resultado es: $resultado");
}



// Crear una función para convertir COP a USD.
// Usar parámetros opcionales para el precio en dólares.