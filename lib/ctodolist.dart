import 'package:flutter/material.dart';

class CheckedWidget extends StatefulWidget {
  @override
  _CheckedWidgetState createState() => _CheckedWidgetState();
}

class _CheckedWidgetState extends State<CheckedWidget> {
  final checkState = String;
  bool _isChecked = true;

  void _toggleCheck() {
  setState(() {
      if (_isChecked) {
        _isChecked = false;
      } else {
        _isChecked = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       new Flexible(
          flex: 2,
          child: IconButton(
            icon: (_isChecked ? Icon(Icons.check_box) : Icon(Icons.check_box_outline_blank)),
            color: Color(0xFF999999),
            onPressed: _toggleCheck,
          ),
        ),
        new Flexible(
          flex: 8,
                child: Text(
                  'Тестовое задание написаsasfsafsfть'.toUpperCase(),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: new TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'SFUI',
                      decoration: TextDecoration.lineThrough,
                      letterSpacing: 3,
                      color: Color(0xFF999999)),
                  textAlign: TextAlign.left,
                ),
        ),
      ],
    );
    
  }
}

