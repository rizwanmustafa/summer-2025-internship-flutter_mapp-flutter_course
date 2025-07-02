import 'package:flutter/material.dart';
import 'package:flutter_tutorial/data/notifiers.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) => NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedIndex: selectedPage,
        onDestinationSelected: (destination) {
          print('User clicked on destination $destination');

          selectedPageNotifier.value = destination;
        },
      ),
    );
  }
}
