import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BINI Store'),
        ),
        backgroundColor: Colors.pink[200],
      ),
      body: Center(
        child: Image.network('https://images.squarespace-cdn.com/content/v1/52cc4d12e4b09298835f0ac7/1403667412058-6E8U5M39X93Q1X33JJ6R/ke17ZwdGBToddI8pDm48kExLaNK_kCgjDC3-KReOirNZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpzy6JvjzQ_wegVlOu3onTS2fd6A2ANYrpwanXNDP6AEheb3r8u1y9ieAaQHWJiVsLo/VS_Prototype_1')
    ), // Center
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink[100],
        child: Icon(
          Icons.add,
          color: Colors.white,
        ), // Icon
      ), // FloatingActionButton
    ), // Scafflod
  )); // MaterialApp
}
