import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:uihure/Auth/MobileNumber/UI/mobile_input.dart';
import 'package:uihure/Auth/login_navigator.dart';
import 'package:uihure/Locale/locales.dart';
import 'package:uihure/Themes/colors.dart';

//first page that takes phone number as input for verification
class PhoneNumber extends StatefulWidget {
  static const String id = 'phone_number';

  @override
  _PhoneNumberState createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        //used for scrolling when keyboard pops up
        child: Container(
          color: Theme.of(context).cardColor,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Spacer(),
              Image.asset(
                "assets/images/logo.png",
                scale: 4,
                width: 200,
                height: 200, //delivoo logo
              ),
              // Text(
              //   AppLocalizations.of(context).textTenant,
              //   style: Theme.of(context)
              //       .textTheme
              //       .bodyText2
              //       .copyWith(fontSize: 15, color: Colors.blueGrey[800]),
              // ),
              Spacer(),
              Text("Company Code"),
              Spacer(),
              Image.asset(
                "assets/images/banner-landing.png", //footer image
                width: 300,
                height: 300,
              ),
              Spacer(),
              MobileInput(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 32.0,
                  color: Theme.of(context).cardColor,
                  child: Center(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
