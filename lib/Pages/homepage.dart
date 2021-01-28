import 'package:flutter/material.dart';
import 'package:foodorder/Pages/cart.dart';
import 'package:foodorder/Pages/menu.dart';
import 'package:foodorder/Pages/profile.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';
import 'package:foodorder/style/theme.dart' as Theme;

class homepage extends StatefulWidget {
  @override
  homepageState createState() => homepageState();
}

class homepageState extends State<homepage> {
  int _selectedIndex = 0;
  final _widgetOptions = [
    new menu(),
    new cart(),
    new profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: TitledBottomNavigationBar(
        currentIndex: _selectedIndex,
//        curve: Curves.easeInBack,
        items: [
          TitledNavigationBarItem(title: 'Home', icon: Icons.home),
          TitledNavigationBarItem(title: 'Cart', icon: Icons.shopping_cart),
          TitledNavigationBarItem(title: 'Profile', icon: Icons.account_box),
        ],
        activeColor: Theme.Colors.secondcolor,
        inactiveColor: Theme.Colors.greycolor,
        indicatorColor: Theme.Colors.secondcolor,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
