import 'package:flutter/material.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final pages = [
    PageViewModel(
        pageColor: const Color(0xFF03A9F4),
        // iconImageAssetPath: 'assets/air-hostess.png',
        bubble: Image.asset('images/customize.gif'),
        body: Text(
          'Dengan memesan melalui TREEP, kebutuhan trip anda terpenuhi tanpa ada biaya tersembunyi.',
        ),
        title: Text(
          'Menghemat Anggaran', textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),
        textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
        mainImage: Image.asset(
          'images/customize.gif',
          height: 285.0,
          width: 285.0,
          alignment: Alignment.center,
        )),
    PageViewModel(
      pageColor: const Color(0xFF8BC34A),
      iconImageAssetPath: 'images/rocket.gif',
      body: Text(
        'Trip anda akan dikerjakan langsung oleh HPI Lokal setempat yang sudah dipastikan kualitas layanannya.',
      ),
      title: Text('Jaminan Kualitas Layanan', textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),
      mainImage: Image.asset(
        'images/rocket.gif',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
      textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),
    PageViewModel(
      pageColor: const Color(0xFF607D8B),
      iconImageAssetPath: 'images/responsive.gif',
      body: Text(
        'TREEP diciptakan untuk membantu anda mengawasi jalannya kegiatan di lapangan semudah menjentikkan jari anda.',
      ),
      title: Text('Mudah & Terkontrol', textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),
      mainImage: Image.asset(
        'images/responsive.gif',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
      textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IntroViews Flutter', //title of app
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), //ThemeData
      home: Builder(
        builder: (context) => IntroViewsFlutter(
              pages,
              onTapDoneButton: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ), //MaterialPageRoute
                );
              },
              showSkipButton:
                  true, //Whether you want to show the skip button or not.
              pageButtonTextStyles: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ), //IntroViewsFlutter
      ), //Builder
    ); //Material App
  }
}

/// Home Page of our example app.

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ), //Appbar
      body: Center(
        child: Text("This is the home page of the app"),
      ), //Center
    ); //Scaffold
  }
}
