import 'package:flutter/material.dart';
import 'todolist.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class SecondTab extends StatelessWidget {
  // bool _sel = false;
  final Color color;

  SecondTab(this.color);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: [
        Column(
          children: [
          Container(
            child: Container(
              child: Container(
                height: 161,
                padding: EdgeInsets.only(top: 20, bottom: 36),
                child: Center(
                  child: new Image.asset(
                    'icons/icon-ios.png',
                    width: 105,
                    height: 105,
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 16),
            child: Column(
              children: [
                new Container(
                  width: 590,
                  height: 48,
                  child: new MaterialButton(
                      height: 48,
                      onPressed: () {},
                      textColor: Colors.white,
                      padding: EdgeInsets.only(bottom: 0),
                      child: Container(
                        width: 300,
                        height: 48,
                        decoration: new BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          // gradient: LinearGradient(colors: <Color>[
                          //   Color(0xFF00963E),
                          //   Color(0xFF005E24),
                          // ]),
                          border: new Border.all(
                            color: Color(0xFF00722D),
                            width: 1.0,
                            style: BorderStyle.solid
                          ),
                          borderRadius: new BorderRadius.all(new Radius.circular(100.0)),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Text(
                              'Найти собрание'.toUpperCase(),
                              style: new TextStyle(
                                  fontSize: 15.0,
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
          Container(
            padding: EdgeInsets.only(bottom: 16),
            child: Column(
              children: [
                new Container(
                  width: 590,
                  height: 48,
                  child: new MaterialButton(
                      height: 48,
                      onPressed: () {},
                      textColor: Colors.white,
                      padding: EdgeInsets.only(bottom: 0),
                      child: Container(
                        width: 300,
                        height: 48,
                        decoration: new BoxDecoration(
                          border: new Border.all(
                            color: Color(0xFF00722D),
                            width: 1.0,
                            style: BorderStyle.solid
                          ),
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
                              'Позвонить спонсору'.toUpperCase(),
                              style: new TextStyle(
                                  fontSize: 15.0,
                                  fontFamily: 'SFUI',
                                  letterSpacing: 0,
                                  color: Color(0xFFFFFFFF)),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 16),
            child: Column(
              children: [
                new Container(
                  width: 590,
                  height: 48,
                  child: new MaterialButton(
                      height: 48,
                      onPressed: () {},
                      textColor: Colors.white,
                      padding: EdgeInsets.only(bottom: 0),
                      child: Container(
                        width: 300,
                        height: 48,
                        decoration: new BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          // gradient: LinearGradient(colors: <Color>[
                          //   Color(0xFF00963E),
                          //   Color(0xFF005E24),
                          // ]),
                          border: new Border.all(
                            color: Color(0xFF00722D),
                            width: 1.0,
                            style: BorderStyle.solid
                          ),
                          borderRadius: new BorderRadius.all(new Radius.circular(100.0)),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Text(
                              'Карточки для группы'.toUpperCase(),
                              style: new TextStyle(
                                  fontSize: 15.0,
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
          Container(
            padding: EdgeInsets.only(bottom: 16),
            child: Column(
              children: [
                new Container(
                  width: 590,
                  height: 48,
                  child: new MaterialButton(
                      height: 48,
                      onPressed: () {},
                      textColor: Colors.white,
                      padding: EdgeInsets.only(bottom: 0),
                      child: Container(
                        width: 300,
                        height: 48,
                        decoration: new BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          // gradient: LinearGradient(colors: <Color>[
                          //   Color(0xFF00963E),
                          //   Color(0xFF005E24),
                          // ]),
                          border: new Border.all(
                            color: Color(0xFF00722D),
                            width: 1.0,
                            style: BorderStyle.solid
                          ),
                          borderRadius: new BorderRadius.all(new Radius.circular(100.0)),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Text(
                              'Материалы в помощь'.toUpperCase(),
                              style: new TextStyle(
                                  fontSize: 15.0,
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
          Container(
            padding: EdgeInsets.only(bottom: 16),
            child: Column(
              children: [
                new Container(
                  width: 590,
                  height: 48,
                  child: new MaterialButton(
                      height: 48,
                      onPressed: () {},
                      textColor: Colors.white,
                      padding: EdgeInsets.only(bottom: 0),
                      child: Container(
                        width: 300,
                        height: 48,
                        decoration: new BoxDecoration(
                          border: new Border.all(
                            color: Color(0xFF00722D),
                            width: 1.0,
                            style: BorderStyle.solid
                          ),
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
                              'Ежедневник Мелоди Битти'.toUpperCase(),
                              style: new TextStyle(
                                  fontSize: 15.0,
                                  fontFamily: 'SFUI',
                                  letterSpacing: 0,
                                  color: Color(0xFFFFFFFF)),
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
