import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:wallpups/screens/search.dart';
import 'package:wallpups/screens/settings.dart';
import 'package:wallpups/utils/theme.dart';

import 'screens/screens.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //different pages to navigate to
  final List<Widget> _children = [
    const HomePage(),
    const SearchPage(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0.0,
        backgroundColor: AppColors.mainBackgroundColor,
        selectedItemColor: AppColors.themeColors,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        unselectedItemColor: AppColors.mainText,
        onTap: _navigateBottomBar,
        currentIndex: _selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.home),
            label: ('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.image),
            label: ('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.settings),
            label: ('settings'),
          ),
        ],
      ),
    );
  }
}
