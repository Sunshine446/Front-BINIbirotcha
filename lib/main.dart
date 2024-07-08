import 'package:flutter/material.dart';
import 'package:untitled1/pages/dashboard.dart';
import 'package:untitled1/pages/login.dart';
import 'package:untitled1/pages/menu.dart';
import 'home.dart';
import 'package:untitled1/pages/signup.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/menu',
  routes: {
    '/dashboard' : (context) => Dashboard(),
    '/menu' : (context) => Menu(),
    '/profile' : (context) => Home(),
    '/signup' : (context) => Signup(),
    '/login' : (context) => Login(),
  },
));