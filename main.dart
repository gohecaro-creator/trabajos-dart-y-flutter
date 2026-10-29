
import 'package:flutter/material.dart'; // trabajo de negocio personal 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fresas con Crema',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFFF0F5),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFFF69B4),
          foregroundColor: Colors.white,
        ),
      ),
      home: const MenuInferior(),
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
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.favorite,
            color: Color(0xFFFF69B4),
            size: 80,
          ),
          const Text(
            '¡Bienvenido a Dulce Fresa!',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xFFD63384),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          const Text(
            'Las fresas con crema más deliciosas 🍓',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 17),
          ),
        ],
      ),
    ),

    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.local_dining,
            size: 70,
            color: Color(0xFFFF69B4),
          ),
          const Text(
            'Nuestro producto',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xFFD63384),
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            '🍓 Fresas con crema',
            style: TextStyle(fontSize: 21),
          ),
          const Text(
            '🍫 Fresas con chocolate',
            style: TextStyle(fontSize: 21),
          ),
          const Text(
            '🥛 Fresas con leche condensada',
            style: TextStyle(fontSize: 19),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 15),
          const Text(
            'Precios desde \$8.000',
            style: TextStyle(
              fontSize: 20,
              color: Color(0xFFD63384),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),

    Center(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.storefront,
              size: 75,
              color: Color(0xFFFF69B4),
            ),
            const Text(
              'Sobre nosotros',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xFFD63384),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'Somos un pequeño negocio dedicado '
              'a preparar fresas frescas con crema, '
              'mucho amor y los mejores ingredientes.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    ),

    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.phone,
            size: 75,
            color: Color(0xFFFF69B4),
          ),
          const Text(
            'Contáctanos',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xFFD63384),
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            '¡Haz tu pedido de fresas con crema!',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 10),
          const Text(
            'WhatsApp: 300 000 0000',
            style: TextStyle(fontSize: 18),
          ),
          const Text(
            '¡Gracias por preferirnos! 💗',
            style: TextStyle(fontSize: 17),
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🍓 Dulce Fresa'),
        centerTitle: true,
      ),

      body: pantallas[indiceselecionado],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFFFF69B4),
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color(0xFFFFD6E7),
        currentIndex: indiceselecionado,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_dining),
            label: 'Productos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Nosotros',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: 'Contacto',
          ),
        ],

        onTap: (index) {
          setState(() {
            indiceselecionado = index;
          });
        },
      ),
    );
  }
}
