import 'rectangulo.dart';

void main() {
  Rectangulo rectangulo = Rectangulo(base: 5, altura: 3); 

  print('Área: ${rectangulo.calcularArea()}');
  print('Perímetro: ${rectangulo.calcularPerimetro()}');
}