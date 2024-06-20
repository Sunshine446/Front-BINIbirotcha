import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      title: Text('BINI Merch'),
      backgroundColor: Colors.pink[200],
      centerTitle: true,
    ),
    body: Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Name',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
              letterSpacing: 1.0,
            ),
          ),
          Text(
            'SUNSHINE P. NAVARRO',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 25.0
            ),
          ),
          SizedBox(height: 30.0,),
          Text(
            'Year',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
              letterSpacing: 1.0,
            ),
          ),
          Text(
            'THIRD',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 25.0
            ),
          ),
          SizedBox(height: 30.0,),
          Text(
            'Email',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
              letterSpacing: 1.0,
            ),
          ),
          Text(
            'SUNSHINENAVARRO5@GMAIL.COM',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 25.0,
            ),
          ),
        ],
      ),
    ),
  ),
));