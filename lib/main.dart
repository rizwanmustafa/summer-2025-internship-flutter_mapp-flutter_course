import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// stateless
// material app
// scaffold

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.lightGreen,
          brightness: Brightness.dark,
        ),
      ),

      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Tutorial'), centerTitle: true),

        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
          selectedIndex: 0,
          onDestinationSelected: (destination) {
            print('User clicked on destination $destination');
          },
        ),
      ),
    );
  }
}
