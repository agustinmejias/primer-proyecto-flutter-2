import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bottom Navbar Example',
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color.fromARGB(255, 63, 181, 83),
        scaffoldBackgroundColor: Colors.grey[900],
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
        'Vinicius José Paixão de Oliveira Júnior, más conocido como Vinicius Jr. o Vini Jr., es un futbolista brasileño. Juega como delantero y su equipo actual es el Real Madrid C. F. de la primera división de España.​ Es internacional absoluto con la selección de fútbol de Brasil.',
        style: TextStyle(fontSize: 24)),
    Text(
        'Jude Victor William Bellingham es un futbolista británico que juega de centrocampista en el Real Madrid C. F. de la Primera División de España.',
        style: TextStyle(fontSize: 24)),
    Text(
        'Toni Kroos es un futbolista alemán que juega como centrocampista en el Real Madrid C. F. de la Primera División de España.​ Por su extraordinaria visión de juego, pase y golpeo de balón, es considerado uno de los jugadores más destacados de su generación, además de ser uno de los más laureados.',
        style: TextStyle(fontSize: 24)),
    Text(
        'Luka Modrić es un futbolista croata que desde 2012 juega como centrocampista en el Real Madrid C. F. de la Primera División de España.​ Fue ganador del Balón de Oro y obtuvo el Premio The Best al mejor jugador del mundo según la FIFA en 2018.​',
        style: TextStyle(fontSize: 24)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Real madrid'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[800],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Telefono',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Route',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.share),
            label: 'share',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
