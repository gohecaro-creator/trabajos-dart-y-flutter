import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Menu Inferior',
      home: MenuInferior(),
    );
  }
}

class MenuInferior extends StatefulWidget {
  const MenuInferior({super.key});

  @override
  State<MenuInferior> createState() => _MenuInferiorState();
}

class _MenuInferiorState extends State<MenuInferior> {
  int indiceselecionado = 0;
  final List<Widget> pantallas = [
    Center(child: Text ('bienvenido al inicio',
    style:TextStyle(fontSize:24)
    ),
    ),

Center(child: Text ('bienvenido a configuración',
    style:TextStyle(fontSize:24)
    ),
    ),

    Center(child: Text ('bienvenido a hoja de vida',
    style:TextStyle(fontSize:24)
    ),
    ),

    Center(child: Text ('bienvenido a preguntas',
    style:TextStyle(fontSize:24)
    ),
    ),
    
  ];
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Microsolf 3312810')
      ),
      body:pantallas[indiceselecionado],
 
    
    bottomNavigationBar: BottomNavigationBar(
      type:BottomNavigationBarType.fixed,
      backgroundColor: Colors.blue,
      items: [
        BottomNavigationBarItem(
          icon:Icon(Icons.home),
          label:'Home'

        ),
         BottomNavigationBarItem(
          icon:Icon(Icons.badge_outlined),
          label:'hoja de vida'

        ),

          BottomNavigationBarItem(
          icon:Icon(Icons.settings_ethernet),
          label:'configuración'

        ),
         BottomNavigationBarItem(
          icon:Icon(Icons.settings_ethernet),
          label:'preguntas'

        ),
      ],
      currentIndex: indiceselecionado,
      onTap:(index) {
        setState((){
          indiceselecionado = index;
        });

      }
    ),
    
   );
  }
}

 //suponga que tiene un negocio personanal, 
 // crear una app con un  menu buttonnavigationBar. 
 // opciones en las que de a conocer su negocio.
