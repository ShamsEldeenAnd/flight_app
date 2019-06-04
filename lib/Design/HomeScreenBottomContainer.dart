import 'package:flight_app/Design/HomeScreenTopContainer.dart';
import 'package:flight_app/main.dart';
import 'package:flutter/material.dart';


TextStyle viewAllStyle =
TextStyle(color: appTheme.primaryColor, fontSize: 12.0);

List<CityCard> cityCards = [
  CityCard("assets/images/lasvegas.jpg", "Las Vegas", "feb 2019", "45", "4299",
      "2250"),
  CityCard(
      "assets/images/athens.jpg", "Athens", "Apr 2019", "50", "9999", "4159"),
  CityCard(
      "assets/images/sydney.jpeg", "Sydney", "Dec 2019", "48", "5999", "2399")
];

class HomeScreenBottomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            children: <Widget>[
              Text(
                "Currently Watched Items",
                style: dropDownItemStyle,
              ),
              Spacer(),
              Text(
                "View All(12)",
                style: viewAllStyle,
              )
            ],
          ),
        ),
        Container(
          height: 190,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: cityCards,
          ),
        )
      ],
    );
  }
}

class CityCard extends StatelessWidget {
  final String imagePath, cityName, monthYear, discont, oldPrice, newPrice;

  CityCard(this.imagePath, this.cityName, this.monthYear, this.discont,
      this.oldPrice, this.newPrice);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 7.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        child: Stack(
          children: <Widget>[
            Container(
              height: 190,
              width: 150,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 0.0,
              bottom: 0.0,
              width: 150.0,
              height: 60.0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Colors.black, Colors.black12]),
                ),
              ),
            ),
            Positioned(
              left: 10.0,
              bottom: 10.0,
              right: 10.0,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        cityName,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Colors.white),
                      ),
                      Text(
                        monthYear,
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 14.0,
                            color: Colors.white),
                      )
                    ],
                  ),
                  Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Text(
                        "$discont%",
                        style: TextStyle(fontSize: 14.0, color: Colors.black),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
