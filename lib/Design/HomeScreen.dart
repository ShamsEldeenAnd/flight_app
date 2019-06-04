import 'package:flight_app/Customs/CustomAppBar.dart';
import 'package:flight_app/Design/HomeScreenBottomContainer.dart';
import 'package:flight_app/Design/HomeScreenTopContainer.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomAppBar(),
      body: Column(
        children: <Widget>[
          HomeScreenTopContainer(),
          HomeScreenBottomContainer()
        ],
      ),
    );
  }
}
