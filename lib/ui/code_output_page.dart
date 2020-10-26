/*
* File : Bottom Navigation widget
* Version : 1.0.0
* Description :
* */

import 'package:dart_code_viewer/dart_code_viewer.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter_from_app/theme/app_text_theme.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CodeOutputPage extends StatefulWidget {
  final String title;
  final String code;
  final String imageAsset;

  const CodeOutputPage({Key key, this.title, this.code, this.imageAsset})
      : super(key: key);
  @override
  _CodeOutputPageState createState() => _CodeOutputPageState();
}

class _CodeOutputPageState extends State<CodeOutputPage> {
  int _currentIndex = 0;
  ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.title}"),
      ),
      body: Container(
        color: themeData.backgroundColor,
        child: Center(
          child: _currentIndex == 0
              ? DartCodeViewer("${widget.code}", showCopyButton: false)
              : Container(
                  child: Image.asset(widget.imageAsset),
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        /*----------- Build Bottom Navigation Tab here ---------------*/
        currentIndex: _currentIndex,
        backgroundColor: themeData.bottomAppBarTheme.color,
        selectedIconTheme: IconThemeData(color: themeData.primaryColor),
        selectedItemColor: themeData.primaryColor,
        unselectedIconTheme:
            IconThemeData(color: themeData.colorScheme.onSurface),
        unselectedItemColor: themeData.colorScheme.onSurface,
        onTap: onTapped,
        items: [
          /*----------- Build Bottom Navigation Content here ---------------*/
          BottomNavigationBarItem(
              icon: new Icon(Icons.code),
              title: Text('Code',
                  style: getTextStyle(themeData.textTheme.subtitle2,
                      color: _currentIndex == 0
                          ? themeData.colorScheme.primary
                          : themeData.colorScheme.onSurface))),
          BottomNavigationBarItem(
              icon: new Icon(MdiIcons.cellphoneAndroid),
              title: Text('Output',
                  style: getTextStyle(themeData.textTheme.subtitle2,
                      color: _currentIndex == 1
                          ? themeData.colorScheme.primary
                          : themeData.colorScheme.onSurface)))
        ],
      ),
    );
  }

  onTapped(value) {
    setState(() {
      _currentIndex = value;
    });
  }
}
