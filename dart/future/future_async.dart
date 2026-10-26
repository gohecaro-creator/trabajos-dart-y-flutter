void main() async{
  print('Inicio del programa');

  try{
    String datos = await getAdd();
      print(datos);
  }catch(e){
  print(e);
  }
  print('Fin del programa');


}
Future<String> getAdd (){
 return Future.delayed(Duration(seconds: 5), () { 


int add = 0;
for(int i =0; i <1000; i++){
  add+=i; // scumulador 
}

return '$add';
});
}

// catch es agarrar
// fucher es algo que se ejecuta en siento tiempo
// empleando un future devolver  los 
// n primeros terminos de la serie de fibonachi
// se debe rtornar del ultimo al
// primer termino 
// ejemplo: 0,1,1,2,3,5,8,13
// retornar 138532110