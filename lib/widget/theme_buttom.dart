import 'package:flutter/material.dart';
import 'package:roman/helper/colors.dart';

class ThemeButton extends StatelessWidget {
  String label;
  Function onClick;
  Color color;
  Color highlight;
  Widget icon;
  Color borderColor;
  Color labelColor;
  double borderWidth;

  ThemeButton(
      {this.label,
      this.labelColor = Colors.white,
      this.color = AppColors.MAIN_COLOR,
      this.highlight = AppColors.HIGHTLIGHT_DEFAULT,
      this.icon,
      this.borderColor = Colors.transparent,
      this.borderWidth = 4,
      @required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Material(
          color: color,
          child: InkWell(
            splashColor: highlight.withOpacity(0.2),
            highlightColor: highlight,
            onTap: () {
              onClick();
            },
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.transparent,
                border: Border.all(color: Color(0xFF80C038), width: 4),
              ),
              child: this.icon == null
                  ? Text(this.label,
                      style: TextStyle(
                          fontSize: 16,
                          color: this.labelColor,
                          fontWeight: FontWeight.bold))
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        this.icon,
                        SizedBox(width: 10),
                        Text(this.label,
                            style: TextStyle(
                                fontSize: 16,
                                color: this.labelColor,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
