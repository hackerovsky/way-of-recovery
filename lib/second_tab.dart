import 'package:flutter/material.dart';
import 'todolist.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondTab extends StatelessWidget {
  bool _sel = false;
  final Color color;

  SecondTab(this.color);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: [
        Column(children: [
          Container(
            padding: EdgeInsets.only(bottom: 24),
            child: Column(
              children: [
                new Container(
                  width: 590,
                  height: 94,
                  child: new MaterialButton(
                      height: 94,
                      onPressed: () {},
                      textColor: Colors.white,
                      padding: EdgeInsets.only(bottom: 0),
                      child: Container(
                        width: 320,
                        height: 64,
                        decoration: new BoxDecoration(
                          gradient: LinearGradient(colors: <Color>[
                            Color(0xFF00963E),
                            Color(0xFF005E24),
                          ]),
                          borderRadius: new BorderRadius.all(new Radius.circular(100.0)),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Text(
                              'Самоанализ'.toUpperCase(),
                              style: new TextStyle(
                                  fontSize: 18.0,
                                  fontFamily: 'SFUI',
                                  letterSpacing: 0,
                                  color: Color(0xFFFFFFFF)),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      )),
                ),
                new Container(
                  height: 94,
                  padding: EdgeInsets.only(bottom: 16),
                  child: new MaterialButton(
                      height: 94,
                      onPressed: () {},
                      textColor: Colors.white,
                      child: Container(
                        width: 320,
                        height: 64,
                        decoration: new BoxDecoration(
                          gradient: LinearGradient(colors: <Color>[
                            Color(0xFFFFFFFF),
                            Color(0xFFFFFFFF),
                          ]),
                          border: new Border.all(
                              color: Color(0xFF00722D),
                              width: 2.0,
                              style: BorderStyle.solid
                          ),
                          borderRadius: new BorderRadius.all(new Radius.circular(100.0)),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Text(
                              'Правила одного дня'.toUpperCase(),
                              style: new TextStyle(
                                  fontSize: 18.0,
                                  fontFamily: 'SFUI',
                                  letterSpacing: 0,
                                  color: Color(0xFF00722D)),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      )),
                ),
                new Container(
                  height: 94,
                  padding: EdgeInsets.only(bottom: 16),
                  child: new MaterialButton(
                      height: 94,
                      onPressed: () {},
                      textColor: Colors.white,
                      child: Container(
                        width: 320,
                        height: 64,
                        decoration: new BoxDecoration(
                          gradient: LinearGradient(colors: <Color>[
                            Color(0xFFFFFFFF),
                            Color(0xFFFFFFFF),
                          ]),
                          border: new Border.all(
                              color: Color(0xFF00722D),
                              width: 2.0,
                              style: BorderStyle.solid
                          ),
                          borderRadius: new BorderRadius.all(new Radius.circular(100.0)),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Text(
                              'Правила одного дня'.toUpperCase(),
                              style: new TextStyle(
                                  fontSize: 18.0,
                                  fontFamily: 'SFUI',
                                  letterSpacing: 0,
                                  color: Color(0xFF00722D)),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      )),
                ),
                new Container(
                  height: 64,
                  child: new MaterialButton(
                      height: 94,
                      onPressed: () {},
                      textColor: Colors.white,
                      child: Container(
                        width: 320,
                        height: 64,
                        decoration: new BoxDecoration(
                          gradient: LinearGradient(colors: <Color>[
                            Color(0xFFFFFFFF),
                            Color(0xFFFFFFFF),
                          ]),
                          border: new Border.all(
                              color: Color(0xFF00722D),
                              width: 2.0,
                              style: BorderStyle.solid
                          ),
                          borderRadius: new BorderRadius.all(new Radius.circular(100.0)),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Text(
                              'Правила одного дня'.toUpperCase(),
                              style: new TextStyle(
                                  fontSize: 18.0,
                                  fontFamily: 'SFUI',
                                  letterSpacing: 0,
                                  color: Color(0xFF00722D)),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
        ]),
      ],
    );
  }
}
