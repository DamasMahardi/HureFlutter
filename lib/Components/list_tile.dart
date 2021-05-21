
import 'package:flutter/material.dart';

class BuildListTile extends StatelessWidget {
  final String image;
  final String text;
  final Function onTap;
  final bool small;

  BuildListTile({this.image, this.text, this.onTap, this.small = false});
  

  @override
  Widget build(BuildContext context) {
    
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 20.0),
      leading:
        Image.asset(
          image,
          height: small ? 26 : 36,
        ),
      
      title: Text(
        text,
        style: Theme.of(context).textTheme.headline4.copyWith(
            fontWeight: FontWeight.bold, letterSpacing: 0.07, fontSize: 17),
      ),
      onTap: onTap,
    );
  }
}
