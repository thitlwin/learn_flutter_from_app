/*
* File : Bottom Navigation widget
* Version : 1.0.0
* Description :
* */
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../AppTheme.dart';

class FlutterLayoutCourseWidget extends StatefulWidget {
  @override
  _FlutterLayoutCourseWidgetState createState() =>
      _FlutterLayoutCourseWidgetState();
}

class _FlutterLayoutCourseWidgetState extends State<FlutterLayoutCourseWidget> {
  int _currentIndex = 0;
  ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(MdiIcons.chevronLeft),
        ),
        title: Text("Bottom Navigation",
            style: AppTheme.getTextStyle(themeData.textTheme.headline6,
                fontWeight: FontWeight.w500, color: Colors.white)),
      ),
      body: Container(
        color: themeData.backgroundColor,
        child: Center(
          child: _currentIndex == 0
              ? Icon(Icons.chat,
                  color: themeData.colorScheme.onBackground, size: 80)
              : Icon(Icons.call,
                  color: themeData.colorScheme.onBackground, size: 80),
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
                  style: AppTheme.getTextStyle(themeData.textTheme.subtitle2,
                      color: _currentIndex == 0
                          ? themeData.colorScheme.primary
                          : themeData.colorScheme.onSurface))),
          BottomNavigationBarItem(
              icon: new Icon(MdiIcons.cellphoneAndroid),
              title: Text('Output',
                  style: AppTheme.getTextStyle(themeData.textTheme.subtitle2,
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
