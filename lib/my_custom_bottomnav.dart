import 'package:flutter/material.dart';

class MyCustomBottomNavigation extends StatefulWidget {
  const MyCustomBottomNavigation({super.key});

  @override
  State<MyCustomBottomNavigation> createState() =>
      _MyCustomBottomNavigationState();
}

class _MyCustomBottomNavigationState extends State<MyCustomBottomNavigation> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = [
    Text(
      'Home Page',
      style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
    ),
    Text(
      'Support Page',
      style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
    ),
    Text(
      'Account Page',
      style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            tooltip: 'Home',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.support),
            label: 'Support',
            tooltip: 'Support',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Account',
            tooltip: 'Account',
            backgroundColor: Colors.blue,
          ),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        iconSize: 40,
        onTap: _onItemTapped,
        elevation: 5,
      ),
    );
  }
}
