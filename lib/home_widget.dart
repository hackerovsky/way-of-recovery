import 'package:flutter/material.dart';
import 'tab_first.dart';
import 'tab_second.dart';
import 'tab_third.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    FirstTabWidget(Colors.white),
    SecondTab(Colors.red),
    // ThirdTab()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(),
        appBar: MyCustomAppBar(
          height: 100,
        ),
        body: _children[_currentIndex], // new
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped, // new
          currentIndex: _currentIndex, // new
          items: [
            new BottomNavigationBarItem(
              icon: Icon(Icons.timer),
              title: Text('Главная'),
            ),
            new BottomNavigationBarItem(
              icon: Icon(Icons.outlined_flag),
              title: Text('Полезное'),
            ),
            new BottomNavigationBarItem(
                icon: Icon(Icons.settings), title: Text('Настройки'))
          ],
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final colF3F4F5 = const Color(0xfff3f4f5);

  const MyCustomAppBar({
    Key key,
    @required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: new BoxDecoration(
            border: Border(
              bottom: BorderSide(color: colF3F4F5, width: 1)
            ),
          ),
            child: Container(
              color: Color(0xFFFFFFFF),
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top:38, bottom: 37, left: 38, right: 38),
              child: Center(
                child: new Text('Путь выздоровления'.toUpperCase(),  style: new TextStyle(fontSize: 20.0, fontFamily: 'SFUI_Bold', letterSpacing: 3), overflow: TextOverflow.ellipsis),
              ),
            ),
          ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}