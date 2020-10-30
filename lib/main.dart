import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_flutter_from_app/routes/app_pages.dart';
import 'package:learn_flutter_from_app/theme/app_text_theme.dart';
import 'package:learn_flutter_from_app/theme/app_theme.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'AppTheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learn Flutter From App',
      theme: appThemeData,
      home: MyHomePage(title: 'Home'),
      getPages: AppPages.pages,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  ThemeData themeData;
  int _selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      drawer: Drawer(
          child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: DrawerHeader(
                padding: EdgeInsets.all(0),
                margin: EdgeInsets.all(0),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.0, bottom: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Image(
                                image: AssetImage(
                                    "./assets/images/ic_flutter.png"),
                                height: 102,
                                width: 102,
                                color: themeData.colorScheme.onPrimary),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Text("v. 1.0.0",
                                style: getTextStyle(
                                    themeData.textTheme.bodyText1,
                                    color: themeData.colorScheme.onPrimary))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                decoration: BoxDecoration(color: themeData.primaryColor),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                // color: themeData.backgroundColor,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(MdiIcons.materialDesign,
                          color: _selectedPage == 0
                              ? themeData.colorScheme.primary
                              : themeData.colorScheme.onSurface),
                      title: Text("Flutter Layout",
                          style: getTextStyle(themeData.textTheme.subtitle2,
                              fontWeight: _selectedPage == 0
                                  ? FontWeight.w600
                                  : FontWeight.w500,
                              color: _selectedPage == 0
                                  ? themeData.colorScheme.primary
                                  : themeData.colorScheme.onSurface)),
                      onTap: () {
                        setState(() {
                          _selectedPage = 0;
                        });
                        // Get.to(FlutterLayoutCourseWidget());
                        Get.toNamed(Routes.LAYOUT_COURSE_CONTENT);
                      },
                    ),
                    ListTile(
                      leading: Icon(MdiIcons.appleIos,
                          color: _selectedPage == 1
                              ? themeData.colorScheme.primary
                              : themeData.colorScheme.onSurface),
                      title: Text("Cupertino Widget",
                          style: getTextStyle(themeData.textTheme.subtitle2,
                              fontWeight: _selectedPage == 1
                                  ? FontWeight.w600
                                  : FontWeight.w500,
                              color: _selectedPage == 1
                                  ? themeData.colorScheme.primary
                                  : themeData.colorScheme.onSurface)),
                      onTap: () {
                        setState(() {
                          _selectedPage = 1;
                        });
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      leading: Icon(
                        MdiIcons.fileMultipleOutline,
                        color: _selectedPage == 2
                            ? themeData.colorScheme.primary
                            : themeData.colorScheme.onSurface,
                        size: 22,
                      ),
                      title: Text("Screens",
                          style: getTextStyle(themeData.textTheme.subtitle2,
                              fontWeight: _selectedPage == 2
                                  ? FontWeight.w600
                                  : FontWeight.w500,
                              color: _selectedPage == 2
                                  ? themeData.colorScheme.primary
                                  : themeData.colorScheme.onSurface)),
                      onTap: () {
                        setState(() {
                          _selectedPage = 2;
                        });
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ),w
    );
  }
}
