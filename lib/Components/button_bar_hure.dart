import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:uihure/Themes/colors.dart';
import 'package:uihure/Themes/style.dart';

class BottonBarClock extends StatelessWidget {
  final Function onTap;
  final String text;
  final Color color;
  final Color textColor;

  BottonBarClock(
      {@required this.onTap, @required this.text, this.color, this.textColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        
        margin: EdgeInsets.only(right: 100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/alarm.png", scale: 4),
            SizedBox(width: 8),
            SizedBox(
              width: 8,
            ),
            Text(
              text,
              style: bottomBarTextStyle.copyWith(color: textColor) ??
                  bottomBarTextStyle,
            ),
          ],
        ),
        color: color ?? kMainColor,
        height: 50.0,
        width: 0,
      ),
    );
  }
}
