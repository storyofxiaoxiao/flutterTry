// 引入 flutter UI 库 material
import 'package:flutter/material.dart';
import 'package:flutter_app/routes.dart';
import 'package:flutter_app/widgets/BottomTabBar.dart';

// 默认文件启动函数 main 指向 runapp 函数(),并且在里面调用 MyApp 类
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Try Home Page',
      home: BottomTabBar(),
      routes: staticRoutes,
      debugShowCheckedModeBanner: false,
    );
  }
}
