import 'package:flutter/material.dart';
import 'package:path/path.dart';

class CustomPageRoute extends PageRouteBuilder {
  final Widget route;
  final AxisDirection direction;
  CustomPageRoute({required this.route, this.direction = AxisDirection.up})
      : super(
            transitionDuration: Duration(seconds: 1),
            pageBuilder: (context, animation, secondaryAnimation) => route);
  Widget buildTranditions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) =>
      FadeTransition(
        opacity: animation,
        child: route,
      );
}
