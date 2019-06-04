import 'package:flight_app/Design/HomeScreen.dart';
import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
      title: "Flight List Mockup",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: appTheme,
    ));

//App stayleing
ThemeData appTheme =
    ThemeData(primaryColor: Color(0xFFF3791A), fontFamily: 'Oxygen');


