void main() {
  Map<String, dynamic> Persons = {
    'documento': 123456,
    'name': 'Diego',  
    'salary':100.32,
    'status': true,
  };
  print(Persons);
  Persons['functions'] = 'Develop in Dart';
  print(Persons);
  print(Persons.values.elementAt(0)); // para consultar el elemento 1 
}