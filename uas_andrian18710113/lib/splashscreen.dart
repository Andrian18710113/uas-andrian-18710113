import 'package:flutter/material.dart';
import 'package:uas_flutter/navigator.dart';
import 'dart:async';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return halaman();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Icon(Icons.article_outlined, size: 75.0)),
          SizedBox(
            height: 25.0,
          ),
          Text(
            "Aplikasi Saya",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
            ),
          ),
          Text(
            " ",
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          )
        ],
      ),
    );
  }
}
