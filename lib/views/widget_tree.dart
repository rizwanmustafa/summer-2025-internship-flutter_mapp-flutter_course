import 'package:flutter/material.dart';
import 'package:flutter_tutorial/data/notifiers.dart';
import 'package:flutter_tutorial/views/pages/home_page.dart';
import 'package:flutter_tutorial/views/pages/settings_page.dart';
import 'package:flutter_tutorial/views/pages/profile_page.dart';
import 'package:flutter_tutorial/views/widgets/navbar_widget.dart';

const appTitle = 'Flutter App';

List<Widget> pages = [HomePage(), ProfilePage(), SettingsPage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDarkMode, child) => Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                // Navigator.pushReplacement can be used to replace the current page
                // It can come in handy like if a user logs in and you don't want them to return back to the login page,you can use this to push home page as the replacement to the login page.
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              },
              icon: Icon(Icons.settings),
            ),
            IconButton(
              onPressed: () {
                isDarkModeNotifier.value = !isDarkModeNotifier.value;
              },
              icon: Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode),
            ),
          ],
        ),

        body: ValueListenableBuilder(
          valueListenable: selectedPageNotifier,
          builder: (context, selectedPageIndex, child) =>
              pages.elementAt(selectedPageIndex),
        ),

        bottomNavigationBar: NavbarWidget(),
      ),
    );
  }
}
