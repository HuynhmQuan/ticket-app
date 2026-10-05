import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/screens/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const new({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  // Define homescreen
  final appScreens = [
    const HomeScreen(),
    const Text('Search'),
    const Text('Tickets'),
    const Text('Profile'),
  ];

  // Change _selectedIndex's function
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: appScreens[_selectedIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          unselectedItemColor: Color(0xFF526400),
          selectedItemColor: Colors.blueGrey,
          showSelectedLabels: false,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(FluentIcons.home_20_regular),
              activeIcon: Icon(FluentIcons.home_20_filled),
              label: 'Home',
            ),

            BottomNavigationBarItem(
              icon: Icon(FluentIcons.search_20_regular),
              activeIcon: Icon(FluentIcons.search_20_filled),
              label: 'Search',
            ),

            BottomNavigationBarItem(
              icon: Icon(FluentIcons.ticket_diagonal_20_regular),
              activeIcon: Icon(FluentIcons.ticket_diagonal_20_filled),
              label: 'Tickets',
            ),

            BottomNavigationBarItem(
              icon: Icon(FluentIcons.person_20_regular),
              activeIcon: Icon(FluentIcons.person_20_filled),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
