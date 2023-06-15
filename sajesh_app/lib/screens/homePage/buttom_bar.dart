import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:sajesh_app/screens/homePage/desboard.dart';
import 'package:sajesh_app/screens/notificationScreen/notificationScreen.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:sajesh_app/screens/widgets/myColors.dart';

class ButtomBar extends StatefulWidget {
  const ButtomBar(
      {super.key, required String languageCode, required String title});

  @override
  State<ButtomBar> createState() => _ButtomBarState();
}

class _ButtomBarState extends State<ButtomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const DesboardView(
      languageCode: '',
      title: '',
    ),
    const NotificationScreen(
      languageCode: '',
      title: '',
    ),
    const Text('message'),
    const Text('Courses'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          elevation: 10,
          onTap: _onItemTapped,
          // showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 243, 41, 27),
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_alert_regular),
                activeIcon: Icon(
                  FluentSystemIcons.ic_fluent_alert_filled,
                  color: Colors.white,
                ),
                label: 'Notification'),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_comment_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_comment_filled),
                label: 'Massage'),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons
                    .ic_fluent_book_formula_engineering_regular),
                activeIcon: Icon(FluentSystemIcons
                    .ic_fluent_book_formula_engineering_filled),
                label: 'Courses'),
          ]),
    );
  }
}
