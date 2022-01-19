import 'package:flutter/material.dart';
import 'dart:async';
import 'package:uas_flutter/main.dart';

class halaman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Heading"),
          backgroundColor: Colors.grey,
        ),
        body: Container(
          padding: EdgeInsets.all(30.0),
          child: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              Card(
                margin: EdgeInsets.all(7.0),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'Bengkel');
                  },
                  splashColor: Colors.blue[100],
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.directions_car_filled_rounded,
                          size: 75.0,
                        ),
                        Text("Bengkel", style: new TextStyle(fontSize: 17.0))
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(7.0),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'Berita');
                  },
                  splashColor: Colors.blue[100],
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.sports_basketball_outlined,
                          size: 75.0,
                        ),
                        Text("Berita", style: new TextStyle(fontSize: 17.0))
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(7.0),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'profil');
                  },
                  splashColor: Colors.blue[100],
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.person_outline,
                          size: 75.0,
                        ),
                        Text("Profile", style: new TextStyle(fontSize: 17.0))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
