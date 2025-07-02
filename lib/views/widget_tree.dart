import 'package:flutter/material.dart';
import 'package:flutter_tutorial/data/notifiers.dart';
import 'package:flutter_tutorial/views/pages/home_page.dart';
import 'package:flutter_tutorial/views/pages/profile_page.dart';
import 'widgets/navbar_widget.dart';

const appTitle = 'Flutter App';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appTitle), centerTitle: true),

      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPageIndex, child) =>
            pages.elementAt(selectedPageIndex),
      ),

      bottomNavigationBar: NavbarWidget(),
    );
  }
}
