class Descuento {
  int cantidad;
  double precioUnitario;

  Descuento(this.cantidad, this.precioUnitario);

  void calcularDescuento() {
    if (cantidad <= 0) {
      print("Cantidad de productos no permitida.");
      return;
    }

    double porcentajeDescuento = 0.0;

    if (cantidad > 100) {
      porcentajeDescuento = 0.10; // 10%
    } else if (cantidad >= 11 && cantidad <= 100) {
      porcentajeDescuento = 0.088; // 8.8%
    } else if (cantidad >= 1 && cantidad <= 10) {
      porcentajeDescuento = 0.0111; // 1.11%
    }

    double subtotal = cantidad * precioUnitario;
    double valorDescuento = subtotal * porcentajeDescuento;
    double totalPagar = subtotal - valorDescuento;

    print("Cantidad de productos: $cantidad");
    print("Descuento aplicado: ${(porcentajeDescuento * 100).toStringAsFixed(2)}%");
    print("Valor del descuento: \$${valorDescuento.toStringAsFixed(2)}");
    print("Total a pagar: \$${totalPagar.toStringAsFixed(2)}");
  }
}

void main() {
  // Ejemplo de prueba:
  var compra = Descuento(100, 20000);
  compra.calcularDescuento();
}