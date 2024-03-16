import 'package:flutter/material.dart';
import 'package:srm_live/pages/home.dart';
import 'package:srm_live/pages/menu_page.dart';
import 'package:srm_live/pages/register.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:hidden_drawer_menu/model/item_hidden_menu.dart';
import 'package:hidden_drawer_menu/model/screen_hidden_drawer.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  late List<ScreenHiddenDrawer> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Khane M Kya Hai",
          
          baseStyle: const TextStyle(color: Color.fromARGB(255, 190, 196, 230)),
          // Change the background color behind the title here
          selectedStyle: const TextStyle(color: Color.fromARGB(255, 190, 196, 230)),

          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MenuPage(),
              ),
            );
          },
        ),
        const HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Registration Link",
          
          baseStyle: const TextStyle(color: Color.fromARGB(255, 190, 196, 230)),
          // Change the background color behind the title here
          selectedStyle: const TextStyle(color: Color.fromARGB(255, 190, 196, 230)),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RegisterPage(
                  onTap: () {},
                ),
              ),
            );
          },
        ),
        const HomePage(),
      ),
    ];
  }

 @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Theme.of(context).colorScheme.secondary,
      screens: _screens,
      initPositionSelected: 0,
      
    );
  }
}
