import 'package:flutter/material.dart';
import 'todolist.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlaceholderWidget extends StatelessWidget {
  bool _sel = false;
  final Color color;

  PlaceholderWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: [
        Column(children: [
          Container(
            color: Color(0xFFFFFFFF),
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
            color: Color(0xFFFFFFFF),
            height: 54,
            padding: EdgeInsets.only(bottom: 24),
            child: Center(
              child: new Text('Заголовок аффирмации'.toUpperCase(),
                  style: new TextStyle(
                      fontSize: 22.0, fontFamily: 'SFUI', letterSpacing: 3),
                  overflow: TextOverflow.ellipsis),
            ),
          ),
          Container(
            color: Color(0xFFFFFFFF),
            height: 72,
            padding: EdgeInsets.only(bottom: 36),
            child: Center(
              child: new Text(
                'ТЕКСТ АФФИРМАЦИИ ПОЧТИ LOREM IPSUM И КОЕ ЧТО Ещё... (Автора ИМЯ)'
                    .toUpperCase(),
                style: new TextStyle(
                    fontSize: 16.0, fontFamily: 'SFUI', letterSpacing: 3),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            color: Color(0xFFFFFFFF),
            height: 194,
            padding: EdgeInsets.only(bottom: 36),
            child: Column(
              children: [
                new Container(
                  width: 590,
                  height: 94,
                  child: new MaterialButton(
                      height: 94,
                      onPressed: () {},
                      textColor: Colors.white,
                      padding: EdgeInsets.only(bottom: 30),
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
          Container(
            color: Color(0xFFFFFFFF),
            height: 228,
            padding: EdgeInsets.only(bottom: 36, left: 16, right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                new Container(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: new Text(
                          'СПИСОК ЗАДАЧ'.toUpperCase(),
                          style: new TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'SFUI_Bold',
                              letterSpacing: 3,
                              color: Color(0xFF6C7B8A)),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        child: new Text(
                          'Показать все'.toUpperCase(),
                          style: new TextStyle(
                              fontSize: 14.0,
                              fontFamily: 'SFUI_Bold',
                              letterSpacing: 3,
                              color: Color(0xFFBCBCBC)),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                new Container(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: CheckWidget(),
                      ),
                      
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color(0xFFFFFFFF),
            height: 218,
            padding: EdgeInsets.only(bottom: 36, left: 16, right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                new Container(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: new Text(
                          'Инвентеризации'.toUpperCase(),
                          style: new TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'SFUI_Bold',
                              letterSpacing: 3,
                              color: Color(0xFF6C7B8A)),
                          textAlign: TextAlign.left,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        child: new Text(
                          'Показать все'.toUpperCase(),
                          style: new TextStyle(
                              fontSize: 14.0,
                              fontFamily: 'SFUI_Bold',
                              letterSpacing: 3,
                              color: Color(0xFFBCBCBC)),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                new Container(
                  height: 60,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: CheckWidget(),
                      ),
                      
                    ],
                  ),
                ),
                new Container(
                  height: 60,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: CheckWidget(),
                      ),
                      
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color(0xFFFFFFFF),
            height: 228,
            padding: EdgeInsets.only(bottom: 36, left: 16, right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                new Container(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: new Text(
                          'Правило одного дня'.toUpperCase(),
                          style: new TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'SFUI_Bold',
                              letterSpacing: 3,
                              color: Color(0xFF6C7B8A)),
                          textAlign: TextAlign.left,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        child: new Text(
                          'Показать все'.toUpperCase(),
                          style: new TextStyle(
                              fontSize: 14.0,
                              fontFamily: 'SFUI_Bold',
                              letterSpacing: 3,
                              color: Color(0xFFBCBCBC)),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                new Container(
                  height: 60,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: CheckWidget(),
                      ),
                      
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ],
    );
  }
}
