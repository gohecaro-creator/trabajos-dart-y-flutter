void main() {
  final teacher1 = new Teacher(document: '1111', name: 'John Doe'); // instanciando el odjeto 
  print (teacher1);
}

class Teacher {
  String document;
  String name;
  
  Teacher({required this.document, required this.name}); // constructor con parametros nombrados y obligatorios

  
  String toString() {
    return 'Teacher{document: $document, name: $name}';
  }   
}

/* create the class product 
atributes: id,name, price, stock
constructor 
qoverride
// test the class with 2 odjects*/

/*
Crear la clase Product (Producto).

Atributos: id, name, price, stock.

Constructor.

@Override

// Probar la clase con 2 objetos.
*/