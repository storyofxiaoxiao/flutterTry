import 'package:flutter/material.dart';
import 'package:flutter_app/res/res_colors.dart';
import 'package:flutter_app/screens/HomePage.dart';
import 'package:flutter_app/screens/MyAccountPage.dart';
import 'package:flutter_app/screens/NewsPage.dart';

class BottomTabBar extends StatefulWidget {
  BottomTabBar({Key key}) : super(key: key);

  @override
  _BottomTabBarState createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  int _selectedIndex = 0;
  // 定义样式
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    NewsPage(),
    MyAccountPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('BottomTabBar'),
      // ),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.new_releases),
            label: 'Hot News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face),
            label: 'My Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.primaryBlue,
        onTap: _onItemTapped,
      ),
    );
  }
}
