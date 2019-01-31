import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  int photoIndex = 0;

  List<String> photos = [
    'assets/img/home1.jpeg',
    'assets/img/home2.jpeg',
    'assets/img/home3.jpeg',
    'assets/img/home4.jpeg'
  ];

  void _previousImage() {
    setState(() {
      photoIndex = photoIndex > 0 ? photoIndex - 1 : 0;
    });
  }

  void _nextImage() {
    setState(() {
      photoIndex = photoIndex < photos.length - 1 ? photoIndex + 1 : photoIndex;
    });
  }

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
          Center(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top:10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: AssetImage(photos[photoIndex]),
                      fit: BoxFit.cover
                    )
                  ),
                  height: 300.0,
                  width: 325.0,
                  child: GestureDetector(
                    onTap: _nextImage,
                    onDoubleTap: _previousImage,
                  ),
                ),
                Positioned(
                  top: 275.0,
                  left: 25.0,
                  right: 25.0,
                  child: SelectedPhoto(numberOfDots: photos.length, photoIndex: photoIndex),
                )
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            padding: EdgeInsets.only(right: 15.0, left: 15.0),
            height: 40.0,
            child: Material(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.blueGrey,
              elevation: 7.0,
              child: GestureDetector(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: new IconButton(
                        onPressed: () { print('Pressed!'); },
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
                ) 
              )
            )
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
                onTap: () { print('Pressed!'); },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: new IconButton(
                        onPressed: () {},
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: new IconButton(
                      onPressed: () { print('Pressed!'); },
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
            )
          ),  
        ],
      ),
    );
  }
}

class SelectedPhoto extends StatelessWidget {
  final int numberOfDots;
  final int photoIndex;

  SelectedPhoto({this.numberOfDots, this.photoIndex});

  Widget _inactivePhoto() {
    return new Container(
      child: new Padding(
        padding: const EdgeInsets.only(left: 3.0, right: 3.0),
        child: Container(
          height: 8.0,
          width: 8.0,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(4.0)
          ),
        ),
      )
    );
  }

  Widget _activePhoto() {
    return new Container(
      child: new Padding(
        padding: const EdgeInsets.only(left: 5.0, right: 5.0),
        child: Container(
          height: 10.0,
          width: 10.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: [
                BoxShadow(
                color: Colors.grey,
                spreadRadius: 0.0,
                blurRadius: 2.0
              )
            ]
          ),
        ),
      )
    );
  }

  List<Widget> _buildDots() {
    List<Widget> dots = [];

    for (int i = 0; i < numberOfDots; i++) {
      dots.add(
        i == photoIndex ? _activePhoto(): _inactivePhoto()
      );
    }

    return dots;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _buildDots(),
      ),
    );
  }
}