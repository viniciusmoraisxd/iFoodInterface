import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

const String pathIcons = 'assets/icons/';

class AppIcons {
  static const arrowDown = '${pathIcons}arrow_down.svg';
}

class AppIcon extends StatelessWidget {
  final String icon;
  final Size size;
  final Color color;
  const AppIcon(
    this.icon,
    this.color,
    this.size, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      height: size.height,
      width: size.width,
      color: color,
    );
  }
}