import 'package:flutter/material.dart';
import 'package:foodorder/Pages/login.dart';
import 'package:foodorder/Pages/detailedView.dart';
import 'package:foodorder/Pages/menu.dart';
import 'package:foodorder/Pages/homepage.dart';
import 'package:foodorder/Pages/cart.dart';
import 'package:foodorder/Pages/profile.dart';
import 'package:foodorder/Pages/menulist.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: login(),
        routes: <String, WidgetBuilder>{
          '/login': (BuildContext context) => new login(),
          '/detailedView': (BuildContext context) => new detailedView(),
          '/cart': (BuildContext context) => new cart(),
          '/menu': (BuildContext context) => new menu(),
          '/homepage': (BuildContext context) => new homepage(),
          '/profile': (BuildContext context) => new profile(),
          '/menulist': (BuildContext context) => new menulist(),
        }
    );
  }
}
