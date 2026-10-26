abstract class Animal{
  int paws;
  Animal(this.paws);
  void MakeSound();
}

class Dog extends Animal{
  Dog() : super(4);
   void MakeSound(){
    print("Guauuuuu");
   }
}

class Cat extends Animal{
  Cat() : super(4);
   void MakeSound(){
    print("Miauuuuu");
   }
}

class Cow extends Animal{
  Cow() : super(4);
   void MakeSound(){
    print("Muuuuu");
   }
}

//crear las clases de figura, circulo y cuadrado  heredan de figura
// calcular el area de cada figura 
// la super clase es figura 
// es diferente dependiendo de la forma