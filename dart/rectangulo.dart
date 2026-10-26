class Rectangulo {
  double base; 
  double altura;

  Rectangulo({this.base = 0,  this.altura = 0});

  double calcularArea() {
    return base * altura;
  }

  double calcularPerimetro() {
    return 2 * (base + altura);
  }
}