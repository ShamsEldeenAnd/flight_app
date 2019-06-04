import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  List<BottomNavigationBarItem> bottomBarItems;

  CustomAppBar() {
    bottomBarItems = [
      BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.black,
          ),
          title: Text(
            "Explore",
            style: TextStyle(color: Colors.black),
          )), BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite,
            color: Colors.black,
          ),
          title: Text(
            "WatchList",
            style: TextStyle(color: Colors.black),
          )), BottomNavigationBarItem(
          icon: Icon(
            Icons.local_offer,
            color: Colors.black,
          ),
          title: Text(
            "Deals",
            style: TextStyle(color: Colors.black),
          )), BottomNavigationBarItem(
          icon: Icon(
            Icons.notifications,
            color: Colors.black,
          ),
          title: Text(
            "Notifications",
            style: TextStyle(color: Colors.black),
          ))
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20.0,
      child: BottomNavigationBar(
        currentIndex: 2,
        items: bottomBarItems,
        type: BottomNavigationBarType.shifting,
      ),
    );
  }
}
