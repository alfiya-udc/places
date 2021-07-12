import 'package:flutter/material.dart';
import 'package:places/theme/colors.dart';
import 'package:places/theme/textStyles.dart';
import 'package:places/ui/screen/CustomAppBar.dart';
import 'package:places/ui/screen/PlacesListScreen.dart';
import 'package:places/ui/screen/FavoritesScreen/FavoritesScreen.dart';

/// This is the stateful widget that the main application instantiates.
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  late PreferredSizeWidget _appbar;

  PreferredSizeWidget appBar1 = CustomAppBar(
    title: 'Список\n\nинтересных мест',
    height: 152,
  );

  PreferredSizeWidget appBar2 = AppBar(
    title: Text(
      'Избранное',
      style: subtitleStyle,
    ),
    toolbarHeight: 58,
    backgroundColor: white,
    elevation: 0,
  );

  // почему здесь появляется ошибка, если я добавлю const?
  static List<Widget> _widgetOptions = <Widget>[
    PlacesListScreen(),
    FavoritesScreenTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          _appbar = appBar1;
          break;
        case 1:
          _appbar = appBar2;
          break;
      }
    });
  }

  @override
  initState() {
    _appbar = appBar1;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Places list',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Favorites',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
