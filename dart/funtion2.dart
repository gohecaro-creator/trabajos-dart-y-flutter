void main(){
  final String name = "Diego";
  Greet(name, 'Welcome to Flutter'); // function con parametro obligatorio y opcional
}

Greet(name, [message = 'Welcome to Dart']) {
  print("$message, $name");
}

// crate a function to covert COPS to USB. 
// Use optional params in price dollar.