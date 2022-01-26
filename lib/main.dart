import 'package:flutter/material.dart';
import 'package:shop_app/pages/home_page.dart';
import 'package:shop_app/pages/shop_app_page.dart';
import 'package:shop_app/pages/task_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade200
      ),
      home: HomePage(),
      routes: {
        HomePage.id:(context)=>HomePage(),
        ShopAppPage.id:(context)=>ShopAppPage(),
        TaskPage.id:(context)=>TaskPage(),
      },
    );
  }
}
