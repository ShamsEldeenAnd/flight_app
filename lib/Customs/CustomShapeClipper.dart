import 'package:flutter/material.dart';

class CustomShapeClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(0.0, size.height);
    var firstEndPoint = Offset(size.width *.5,size.height - 30.0);
    var firstControlPoint = Offset(size.width*0.25, size.height-50.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);


    var seconedEndPoint = Offset(size.width ,size.height - 80.0);
    var seconedControlPoint = Offset(size.width*0.75, size.height-10.0);
    path.quadraticBezierTo(seconedControlPoint.dx, seconedControlPoint.dy, seconedEndPoint.dx, seconedEndPoint.dy);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}