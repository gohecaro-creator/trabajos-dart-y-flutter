void main() {
  List<int> numbers = [5, 21, 44, 66, 76, 43];
  List<String> numbers2 = [];

  print("Lista inicial: $numbers");

  numbers.add(97);
  print("Lista con nuevo elemento: $numbers");

  // 1. Ordenar ascendentemente (modifica la lista original)
  numbers.sort();
  print("Lista ordenada: $numbers");

  // 2. Pasar los números como texto a numbers2
  numbers2 = numbers.map((n) => n.toString()).toList();

  // 3. Listar los elementos de numbers2 con su índice
  print("\nElementos en numbers2:");
  for (int i = 0; i < numbers2.length; i++) {
    print("${i + 1}. ${numbers2[i]}");
  }
}