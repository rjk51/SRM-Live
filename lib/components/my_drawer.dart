import 'package:flutter/material.dart';
import 'package:srm_live/pages/home.dart';
import 'package:srm_live/pages/menu_page.dart';
import 'package:srm_live/pages/register.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {

    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      child: Column(
        children: [
          const DrawerHeader(
            child: Center(
              child: Icon(
                Icons.account_circle,
                size: 100,
                color: Colors.black26,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: const Text('Home'),
              leading: const Icon(Icons.home),
              onTap: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
            ),
          ),

          SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: const Text('Khane M Kya Hai'),
              leading: const Icon(Icons.food_bank),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MenuPage(),
                  ),
                );
              },
            ),
          ),

          SizedBox(
            height: 20,
          ),
          
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: const Text('Registration Link'),
              leading: const Icon(Icons.app_registration),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegisterPage(
                      onTap: () {}
                    ),
                  ),
                );
              },
            ),
          ),
        
        ],
      ),
    );
  }
}
