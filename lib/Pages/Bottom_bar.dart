import 'package:flutter/material.dart';
import 'package:interiory/Pages/cart.dart';
import 'package:interiory/Pages/home.dart';
import 'package:interiory/Pages/produk.dart';
import 'package:interiory/Pages/profile.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  static const String _title = 'Interiory Make Your Owmn';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Produk(),
    Cart(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color.fromARGB(255, 34, 45, 51)),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chair_alt_sharp, color: Color.fromARGB(255, 34, 45, 51)),
            label: 'Produk',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_checkout_outlined, color: Color.fromARGB(255, 34, 45, 51)),
            label: 'Keranjang',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined, color: Color.fromARGB(255, 34, 45, 51)),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 34, 45, 51),
        onTap: _onItemTapped,
      ),
    );
  }
}
