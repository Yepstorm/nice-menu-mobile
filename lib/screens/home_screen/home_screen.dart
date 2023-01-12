import 'package:flutter/material.dart';
import 'package:nicemenu/screens/home_screen/account_screen.dart';
import 'package:nicemenu/screens/home_screen/cart_screen.dart';
import 'package:nicemenu/screens/home_screen/homepage.dart';
import 'package:nicemenu/screens/home_screen/order_screen.dart';

import '../../widgets/drawer_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final _widgetOptions = [
    HomeScreen1(),
    OrdersScreen(),
    CartScreen(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      drawer: DrawerWidget(screenSize: screenSize),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home,
                  color: _selectedIndex == 0
                      ? const Color.fromRGBO(210, 78, 0, 1)
                      : Colors.grey[300]),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.receipt,
                  color: _selectedIndex == 1
                      ? const Color.fromRGBO(210, 78, 0, 1)
                      : Colors.grey[300]),
              label: 'Orders'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart,
                  color: _selectedIndex == 2
                      ? const Color.fromRGBO(210, 78, 0, 1)
                      : Colors.grey[300]),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle,
                  color: _selectedIndex == 3
                      ? const Color.fromRGBO(210, 78, 0, 1)
                      : Colors.grey[300]),
              label: 'Account'),
        ],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
