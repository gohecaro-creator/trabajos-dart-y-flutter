
/*
Crear la clase Product (Producto).

Atributos: id, name, price, stock.

Constructor.

@Override

method to print the price. 

// Probar la clase con 2 objetos.
*/

void main() {
final product1 = new Product(id: 1, name: 'Laptop', price: 1000.0, stock: 10);
final product2 = new Product(id: 2, name: 'Mouse', price: 20.0, stock: 50);
print(product1);  
print(product2);    
print(product2.printprice()); 
print(product1.printprice());
}

class Product{
  int id;
  String name;
  double price;
  int stock;

  Product({required this.id, required this.name, required this.price, required this.stock});

  @override
  String toString() {
    return 'Product{id: $id, name: $name, price: $price, stock: $stock}';
  }

    double printprice() {
    return this.price + (this.price * 0.1);
    }
  
}