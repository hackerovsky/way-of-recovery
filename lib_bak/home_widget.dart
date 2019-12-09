import 'package:flutter/material.dart';
import 'placeholder_widget.dart';

class Home extends StatefulWidget {
 @override
 State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.deepOrange),
    PlaceholderWidget(Colors.green)
  ];

@override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Путь выздоровления'),
       backgroundColor: Colors.white,
     ),
     body: _children[_currentIndex], // new
     bottomNavigationBar: BottomNavigationBar(
       onTap: onTabTapped, // new
       currentIndex: _currentIndex, // new
       items: [
         new BottomNavigationBarItem(
           icon: Icon(Icons.timer),
           title: Text('Сегодня'),
         ),
         new BottomNavigationBarItem(
           icon: Icon(Icons.outlined_flag),
           title: Text('Полезное'),
         ),
         new BottomNavigationBarItem(
           icon: Icon(Icons.settings),
           title: Text('Настройки')
         )
       ],
     ),
   );
 }

  void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }
}

