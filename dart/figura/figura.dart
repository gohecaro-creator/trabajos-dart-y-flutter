
import 'dart:math';

abstract class Figura {
  double calcularArea();
}

class Circulo extends Figura {
  double radio;

  Circulo(this.radio);

  @override
  double calcularArea() {
    return pi * radio * radio;
  }
}

class Cuadrado extends Figura {
  double lado;

  Cuadrado(this.lado);

  @override
  double calcularArea() {
    return lado * lado;
  }
}




//crear las clases de figura, circulo y cuadrado  heredan de figura
// calcular el area de cada figura 
// la super clase es figura 
// es diferente dependiendo de la forma