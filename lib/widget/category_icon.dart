import 'package:flutter/material.dart';
import 'package:roman/widget/iconfont.dart';

class CategoryIcon extends StatelessWidget {
  Color color;
  String iconName;
  double size;
  double padding;

  CategoryIcon({
    this.color,
    this.iconName,
    this.size = 30,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        color: color,
        padding: EdgeInsets.all(10),
        child: IconFont(
          color: Colors.white,
          iconName: iconName,
          size: 30,

        ),
      ),
    );
  }
}
