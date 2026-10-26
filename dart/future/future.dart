void main(){
print('inicio del programa');
getAdd().then((result){
  print ('$result');
  }).catchError((error){
    print('$error:$error');

  }).whenComplete((){
    print('proceso completado');
  });
print('fin del programa');

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


// notas 
// delayed es el retraso que se tomara
// 