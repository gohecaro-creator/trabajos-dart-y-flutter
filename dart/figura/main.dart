import 'figura.dart';
void main() {
  Circulo circulo = Circulo(5);
  Cuadrado cuadrado = Cuadrado(4);

  print("Area del circulo: ${circulo.calcularArea()}");
  print("Area del cuadrado: ${cuadrado.calcularArea()}");
}