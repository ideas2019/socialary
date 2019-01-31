import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'posts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder> {
        '/posts': (BuildContext context) => new Posts()
      },
      home: MyHomePage(title: 'Socialary'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(
            fontFamily: 'Oswald'
          ),
        ),
        backgroundColor: Colors.teal,
        leading: new IconButton(
          onPressed: () { print('Pressed!'); },
          icon: Icon(FontAwesomeIcons.tablet)
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 150.0,
            child: new Carousel(
              images: [
                new ExactAssetImage("assets/img/home1.jpeg"),
                new ExactAssetImage("assets/img/home2.jpeg"),
                new ExactAssetImage("assets/img/home3.jpeg"),
                new ExactAssetImage("assets/img/home4.jpeg")
              ],
              dotSize: 4.0,
              dotSpacing: 15.0,
              dotColor: Colors.blueGrey,
              indicatorBgPadding: 5.0,
              dotBgColor: Colors.grey.withOpacity(0.5),
              borderRadius: false,
              moveIndicatorFromBottom: 135.0,
              noRadiusForIndicator: true,
              overlayShadow: true,
              overlayShadowColors: Colors.white,
              overlayShadowSize: 0.7,
            )
          ),
          SizedBox(height: 80.0),
          Container(
            padding: EdgeInsets.only(right: 15.0, left: 15.0),
            height: 40.0,
            child: Material(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.blueGrey,
              elevation: 7.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/posts');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: new IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/posts');
                        },
                        icon: Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.white,
                        )
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Center(
                      child: Text(
                        'Log in with Twitter',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Oswald',
                        ),
                      ),
                    )
                  ],
                ),
              ), 
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            padding: EdgeInsets.only(right: 15.0, left: 15.0),
            height: 40.0,
            child: Material(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.grey,
              elevation: 7.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/posts');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: new IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/posts');
                        },
                        icon: Icon(
                          FontAwesomeIcons.google,
                          color: Colors.white,
                        )
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Center(
                      child: Text(
                        'Log in with Google',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Oswald',
                        ),
                      ),
                    )
                  ],
                ) 
              )
            )
          ),
          SizedBox(height: 20.0),
          Container(
            height: 40.0,
            padding: EdgeInsets.only(right: 15.0, left: 15.0),
            color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 1.0
                ),
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/posts');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: new IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/posts');
                        },
                        icon: Icon(
                          FontAwesomeIcons.facebookF,
                          color: Colors.black,
                        )
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Center(
                      child: Text(
                        'Log in with Facebook',
                        style: TextStyle(
                          fontFamily: 'Oswald',
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ),  
        ],
      ),
    );
  }
}