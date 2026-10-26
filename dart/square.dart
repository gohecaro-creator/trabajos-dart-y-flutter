
class Square {
  // Atributos
  double height = 0;
  double width = 0;

  // Constructor: permite construir un objeto (instancia de la clase)
  Square({required this.height, this.width = 0});

  // Método para calcular el área
  double getArea() {
    return height * height;
  }

  // Método para calcular el perímetro
  double getPerimeter() {
    return height * 4;
  }

  // Sobrescribir el método toString()
  @override
  String toString() {
    return 'El cuadrado tiene $height de lado y su área es ${getArea()}';
  }
}