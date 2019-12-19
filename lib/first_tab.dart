import 'package:flutter/material.dart';
import 'todolist.dart';
import 'ctodolist.dart';
import 'first_tab_questions.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class FirstTabWidget extends StatelessWidget {
  bool _sel = false;
  // final String checkState;
  final Color color;

  FirstTabWidget(this.color);

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
                      fontSize: 20.0, fontWeight: FontWeight.bold, fontFamily: 'SFUI', letterSpacing: 3),
                  overflow: TextOverflow.ellipsis),
            ),
          ),
          Container(
            color: Color(0xFFFFFFFF),
            height: 72,
            padding: EdgeInsets.only(bottom: 36, left: 6, right: 6),
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
            height: 144,
            padding: EdgeInsets.only(bottom: 0),
            child: Column(
              children: [
                new Container(
                  width: 590,
                  height: 48,
                  child: new MaterialButton(
                      height: 48,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FirstTabQWidget(Colors.green)),
                        );
                      },
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
                              'Самоанализ'.toUpperCase(),
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
                new Container(
                  padding: EdgeInsets.only(top: 24),
                  width: 590,
                  height: 72,
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
                              'Правила одного дня'.toUpperCase(),
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
            color: Color(0xFFFFFFFF),
            // height: 200,
            padding: EdgeInsets.only(bottom: 0, left: 16, right: 16),
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
                  height: 48,
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
                new Container(
                  height: 48,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Row(
                          children: [
                            new Flexible(
                                flex: 2,
                                child: new IconButton(
                                  icon: Icon(Icons.add),
                                  color: Colors.black38,
                                ),
                              ),
                              new Flexible(
                                flex: 8,
                                      child: Text(
                                        'Добавить задачу'.toUpperCase(),
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
                        ),
                      ),
                      
                    ],
                  ),
                ),
                new Container(
                  decoration: new BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 0.5, color: Colors.grey),
                    ),
                  ),
                ),
                new Container(
                  height: 48,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: CheckedWidget(
                        ),
                      ),
                    ],
                  ),
                ),
                new Container(
                  height: 36,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: CheckedWidget(
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color(0xFFFFFFFF),
            padding: EdgeInsets.only(top: 18, left: 16, right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                new Container(
                  height: 48,
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
                        child: new IconButton(
                          icon: (Icon(Icons.calendar_today)),
                          color: Colors.black38,
                          // onPressed: _toggleCheck,
                        ),
                      ),
                    ],
                  ),
                ),
                new Container(
                  padding: EdgeInsets.only(left: 12),
                  height: 42,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: Row(
                          children: [
                          new Flexible(
                              flex: 4,
                              child: Text(
                                '17.12.19'.toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: new TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'SFUI',
                                    letterSpacing: 3,
                                    color: Color(0xFF999999)),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            new Flexible(
                              flex: 10,
                                child: Text(
                                  '  По ситуации'.toUpperCase(),
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
                        ),
                      ),
                      
                    ],
                  ),
                ),
                new Container(
                  padding: EdgeInsets.only(left: 12),
                  height: 42,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: Row(
                          children: [
                          new Flexible(
                              flex: 4,
                              child: Text(
                                '17.12.19'.toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: new TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'SFUI',
                                    letterSpacing: 3,
                                    color: Color(0xFF999999)),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            new Flexible(
                              flex: 10,
                                child: Text(
                                  '  Общий по дню'.toUpperCase(),
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
                        ),
                      ),
                      
                    ],
                  ),
                ),
                new Container(
                  padding: EdgeInsets.only(left: 12),
                  height: 42,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: Row(
                          children: [
                          new Flexible(
                              flex: 4,
                              child: Text(
                                '17.12.19'.toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: new TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'SFUI',
                                    letterSpacing: 3,
                                    color: Color(0xFF999999)),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            new Flexible(
                              flex: 10,
                                child: Text(
                                  '  По ситуации'.toUpperCase(),
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
                        ),
                      ),
                      
                    ],
                  ),
                ),
                new Container(
                  padding: EdgeInsets.only(left: 12),
                  height: 42,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: Row(
                          children: [
                          new Flexible(
                              flex: 4,
                              child: Text(
                                '17.12.19'.toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: new TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'SFUI',
                                    letterSpacing: 3,
                                    color: Color(0xFF999999)),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            new Flexible(
                              flex: 10,
                                child: Text(
                                  '  Общий по дню'.toUpperCase(),
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
                        ),
                      ),
                      
                    ],
                  ),
                ),
                new Container(
                  padding: EdgeInsets.only(left: 12),
                  height: 42,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: Row(
                          children: [
                          new Flexible(
                              flex: 4,
                              child: Text(
                                '17.12.19'.toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: new TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'SFUI',
                                    letterSpacing: 3,
                                    color: Color(0xFF999999)),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            new Flexible(
                              flex: 10,
                                child: Text(
                                  '  По ситуации'.toUpperCase(),
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
                        ),
                      ),
                      
                    ],
                  ),
                ),
                new Container(
                  padding: EdgeInsets.only(left: 12),
                  height: 42,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: Row(
                          children: [
                          new Flexible(
                              flex: 4,
                              child: Text(
                                '17.12.19'.toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: new TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'SFUI',
                                    letterSpacing: 3,
                                    color: Color(0xFF999999)),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            new Flexible(
                              flex: 10,
                                child: Text(
                                  '  Общий по дню'.toUpperCase(),
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
                        ),
                      ),
                      
                    ],
                  ),
                ),
                new Container(
                  padding: EdgeInsets.only(top: 16, left: 12),
                  height: 42,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: Row(
                          children: [
                          new Flexible(
                              fit: FlexFit.tight,
                              child: Text(
                                'Показать ещё'.toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: new TextStyle(
                                    fontSize: 16.0,
                                    // fontWeight: FontWeight.bold,
                                    fontFamily: 'SFUI',
                                    letterSpacing: 3,
                                    color: Color(0xFF999999)),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            // new Flexible(
                            //   flex: 10,
                            //     child: Text(
                            //       '  Общий по дню'.toUpperCase(),
                            //       overflow: TextOverflow.ellipsis,
                            //       maxLines: 1,
                            //       style: new TextStyle(
                            //           fontSize: 16.0,
                            //           fontFamily: 'SFUI',
                            //           letterSpacing: 3,
                            //           color: Color(0xFF131315)),
                            //       textAlign: TextAlign.left,
                            //     ),
                            // ),
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                ),
                

              ],
            ),
          ),
          Container(
            color: Color(0xFFFFFFFF),
            padding: EdgeInsets.only(top: 18, bottom: 32, left: 16, right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                new Container(
                  height: 48,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: new Text(
                          'Правила одного дня'.toUpperCase(),
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
                        child: new IconButton(
                          icon: (Icon(Icons.calendar_today)),
                          color: Colors.black38,
                          // onPressed: _toggleCheck,
                        ),
                      ),
                    ],
                  ),
                ),
                new Container(
                  padding: EdgeInsets.only(left: 12),
                  height: 42,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: Row(
                          children: [
                          new Flexible(
                              flex: 4,
                              child: Text(
                                '17.12.19'.toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: new TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'SFUI',
                                    letterSpacing: 3,
                                    color: Color(0xFF999999)),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            new Flexible(
                              flex: 10,
                                child: Text(
                                  '  Отчет по дню'.toUpperCase(),
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
                        ),
                      ),
                      
                    ],
                  ),
                ),
                new Container(
                  padding: EdgeInsets.only(left: 12),
                  height: 42,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: Row(
                          children: [
                          new Flexible(
                              flex: 4,
                              child: Text(
                                '17.12.19'.toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: new TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'SFUI',
                                    letterSpacing: 3,
                                    color: Color(0xFF999999)),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            new Flexible(
                              flex: 10,
                                child: Text(
                                  '  Отчет по дню'.toUpperCase(),
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
                        ),
                      ),
                      
                    ],
                  ),
                ),
                new Container(
                  padding: EdgeInsets.only(left: 12),
                  height: 42,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: Row(
                          children: [
                          new Flexible(
                              flex: 4,
                              child: Text(
                                '17.12.19'.toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: new TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'SFUI',
                                    letterSpacing: 3,
                                    color: Color(0xFF999999)),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            new Flexible(
                              flex: 10,
                                child: Text(
                                  '  Отчет по дню'.toUpperCase(),
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
                        ),
                      ),
                      
                    ],
                  ),
                ),
                new Container(
                  padding: EdgeInsets.only(left: 12),
                  height: 42,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: Row(
                          children: [
                          new Flexible(
                              flex: 4,
                              child: Text(
                                '17.12.19'.toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: new TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'SFUI',
                                    letterSpacing: 3,
                                    color: Color(0xFF999999)),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            new Flexible(
                              flex: 10,
                                child: Text(
                                  '  Отчет по дню'.toUpperCase(),
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
                        ),
                      ),
                      
                    ],
                  ),
                ),
                new Container(
                  padding: EdgeInsets.only(left: 12),
                  height: 42,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: Row(
                          children: [
                          new Flexible(
                              flex: 4,
                              child: Text(
                                '17.12.19'.toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: new TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'SFUI',
                                    letterSpacing: 3,
                                    color: Color(0xFF999999)),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            new Flexible(
                              flex: 10,
                                child: Text(
                                  '  Отчет по дню'.toUpperCase(),
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
                        ),
                      ),
                      
                    ],
                  ),
                ),
                new Container(
                  padding: EdgeInsets.only(left: 12),
                  height: 42,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: Row(
                          children: [
                          new Flexible(
                              flex: 4,
                              child: Text(
                                '17.12.19'.toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: new TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'SFUI',
                                    letterSpacing: 3,
                                    color: Color(0xFF999999)),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            new Flexible(
                              flex: 10,
                                child: Text(
                                  '  Отчет по дню'.toUpperCase(),
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
                        ),
                      ),
                      
                    ],
                  ),
                ),
                new Container(
                  padding: EdgeInsets.only(top: 16, left: 12),
                  height: 42,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: Row(
                          children: [
                          new Flexible(
                              fit: FlexFit.tight,
                              child: Text(
                                'Показать ещё'.toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: new TextStyle(
                                    fontSize: 16.0,
                                    // fontWeight: FontWeight.bold,
                                    fontFamily: 'SFUI',
                                    letterSpacing: 3,
                                    color: Color(0xFF999999)),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            // new Flexible(
                            //   flex: 10,
                            //     child: Text(
                            //       '  Общий по дню'.toUpperCase(),
                            //       overflow: TextOverflow.ellipsis,
                            //       maxLines: 1,
                            //       style: new TextStyle(
                            //           fontSize: 16.0,
                            //           fontFamily: 'SFUI',
                            //           letterSpacing: 3,
                            //           color: Color(0xFF131315)),
                            //       textAlign: TextAlign.left,
                            //     ),
                            // ),
                          ],
                        ),
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
