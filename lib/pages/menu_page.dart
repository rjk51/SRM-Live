import 'package:flutter/material.dart';
import 'package:srm_live/components/nav_bar.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: const Text('Menu Page'),
      ),
     
      body: Center(
        child: Text('Welcome to the menu page'),
      ),
    );
  }
}