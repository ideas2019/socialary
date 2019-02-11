import 'package:flutter/material.dart';

import 'login/main.dart';

import 'home/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => new Home()
      },
      home: LoginPage(title: 'Socialary'),
      theme: new ThemeData(
        primaryColor: Colors.teal,
        accentColor: Colors.indigo,
        backgroundColor: Colors.black,
        scaffoldBackgroundColor: Colors.grey[800],
        hintColor: Colors.grey[600],
        highlightColor: Colors.grey,
        textTheme: TextTheme(
          headline: TextStyle(
            fontSize: 42.0, 
            fontWeight: FontWeight.bold, 
          ),
          title: TextStyle(
            fontSize: 20.0, 
            fontStyle: FontStyle.italic, 
            color: Theme.of(context).hintColor
          ),
          body1: TextStyle(
            fontSize: 14.0, 
            fontFamily: 'Oswald',
            color: Theme.of(context).hintColor
          ),
        )
      ),
    );
  }
}

