import 'package:flutter/material.dart';

class CheckWidget extends StatefulWidget {
  @override
  _CheckWidgetState createState() => _CheckWidgetState();
}

class _CheckWidgetState extends State<CheckWidget> {
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
            color: Colors.black38,
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
                      letterSpacing: 3,
                      color: Color(0xFF131315)),
                  textAlign: TextAlign.left,
                ),
        ),
      ],
    );
    
  }
}

