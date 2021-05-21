import 'package:flutter/material.dart';
import 'package:uihure/Auth/login_navigator.dart';
import 'package:uihure/Components/bottom_bar.dart';
import 'package:uihure/Components/textfield.dart';
import 'package:uihure/Locale/locales.dart';

class SocialLogIn extends StatefulWidget {
  @override
  _SocialLogInState createState() => _SocialLogInState();
}

class _SocialLogInState extends State<SocialLogIn> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          titleSpacing: 0,
          leading: IconButton(
            icon: Icon(
              Icons.chevron_left,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context).hey,
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(fontSize: 25.0),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  AppLocalizations.of(context).youreAlmostin,
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(fontSize: 18.0),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone_android,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("PHONE NUMBER",
                          style:
                              TextStyle(color: Colors.grey[600], fontSize: 12))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 33),
                  child: Column(
                    children: [
                      smallTextFormField(null, "+1 984 596 4521"),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 35.0),
                  child: Text(
                    AppLocalizations.of(context).verificationText,
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontSize: 12.8),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomBar(
                text: AppLocalizations.of(context).continueText,
                onTap: () {
                  Navigator.pushNamed(context, LoginRoutes.verification);
                }),
          )
        ],
      ),
    );
  }
}
