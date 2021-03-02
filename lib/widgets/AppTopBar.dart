import 'package:flutter/material.dart';
import 'package:flutter_app/res/colors.dart';
import 'package:flutter_app/screens/HomePage.dart';
import 'package:flutter_app/screens/MyAccountPage.dart';

class AppTopBar extends StatelessWidget {
  const AppTopBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: AppColors.primaryWhite,
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(text: 'Home'),
                  Tab(text: 'My account'),
                ],
              )),
          body: TabBarView(
            children: <Widget>[
              HomePage(),
              MyAccountPage(),
            ],
          ),
        ),
      ),
    );
  }
}
