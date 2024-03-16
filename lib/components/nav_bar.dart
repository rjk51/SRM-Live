import 'package:flutter/material.dart';
import 'package:srm_live/pages/home.dart';
import 'package:srm_live/pages/menu_page.dart';
import 'package:srm_live/pages/register.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// nav_bar.dart


class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    RegisterPage(
      onTap: () {}
    ),
    const MenuPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        color: Theme.of(context).colorScheme.tertiary,
        animationDuration: Duration(milliseconds: 400),
        items: [
          Icon(
            Icons.home,
            color: Theme.of(context).colorScheme.secondary,
            size: 30,
          ),
          Icon(
            Icons.menu,
            color: Theme.of(context).colorScheme.secondary,
            size: 30,
          ),
          Icon(
            Icons.live_tv,
            color: Theme.of(context).colorScheme.secondary,
            size: 30,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
