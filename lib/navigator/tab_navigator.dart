import 'package:flutter/material.dart';
import 'package:flutter_trip/pages/home_page.dart';
import 'package:flutter_trip/pages/search_page.dart';
import 'package:flutter_trip/pages/travel_page.dart';
import 'package:flutter_trip/pages/my_page.dart';

class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  final _defaultColor = Colors.grey;
  final _activeColor = Colors.blue;
  int _currentIndex = 0;

  final _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[
          HomePage(),
          SearchPage(),
          TravelPage(),
          MyPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: _currentIndex,
          onTap: (index) {
            _controller.jumpToPage(index);
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            _bottomNavigationItem(Icons.home, '首页', 0),
            _bottomNavigationItem(Icons.search, '搜索', 1),
            _bottomNavigationItem(Icons.camera, '旅拍', 2),
            _bottomNavigationItem(Icons.account_circle, '我的', 3),
          ]),
    );
  }

  BottomNavigationBarItem _bottomNavigationItem(
      IconData icon, String title, int index) {
    return BottomNavigationBarItem(
      icon: Icon(icon, color: _defaultColor),
      activeIcon: Icon(icon, color: _activeColor),
      title: Text(
        title,
        style: TextStyle(
            color: _currentIndex == index ? _activeColor : _defaultColor),
      ),
    );
  }
}
