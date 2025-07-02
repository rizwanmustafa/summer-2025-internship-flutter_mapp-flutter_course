import 'package:flutter/material.dart';
import 'package:flutter_tutorial/data/notifiers.dart';
import 'package:flutter_tutorial/views/widget_tree.dart';

void main() {
  runApp(const MyApp());
}

// stateful can refresh
// stateless cannot refresh
// setState can be used to refresh

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return WidgetTree();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,

      builder: (context, isDarkMode, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.lightGreen,
            brightness: isDarkMode ? Brightness.dark : Brightness.light,
          ),
        ),

        home: MyHomePage(),
      ),
    );
  }
}
