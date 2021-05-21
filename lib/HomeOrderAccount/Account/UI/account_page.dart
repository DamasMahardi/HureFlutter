import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:uihure/Components/list_tile.dart';
import 'package:uihure/HomeOrderAccount/Account/UI/ListItems/personalinformation.dart';
import 'package:uihure/HomeOrderAccount/Account/UI/ListItems/settings_page.dart';
import 'package:uihure/Locale/locales.dart';
import 'package:uihure/Routes/routes.dart';
import 'package:uihure/Themes/colors.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).account,
            style: Theme.of(context).textTheme.bodyText1),
        centerTitle: true,
      ),
      body: Account(),
    );
  }
}

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  String number;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        UserDetails(),
        Divider(
          color: Theme.of(context).cardColor,
          thickness: 8.0,
        ),
        BuildListTile(
            small: true,
            image: 'images/account/personal-information.png',
            text: AppLocalizations.of(context).accountpersonalInfomationtext,
            onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PersonalInformationPage(),
                  )),),

        // ListTile(
        //   contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 20.0),
        //   leading: Image.asset(
        //     "images/account/personal-information.png",
        //     height: 20,
        //   ),
        //   title: Text(
        //     AppLocalizations.of(context).accountpersonalInfomationtext,
        //     style: Theme.of(context).textTheme.headline4.copyWith(
        //         fontWeight: FontWeight.bold, letterSpacing: 0.07, fontSize: 17),
        //   ),
        //   onTap: () =>
        //       Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //             builder: (context) => PersonalInformationPage(),
        //           )),
        // ),
        BuildListTile(
            small: true,
            image: 'images/account/ic_menu_supportact.png',
            text: AppLocalizations.of(context).accountContactText,
            onTap: () =>Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PersonalInformationPage(),
                  )),),
        BuildListTile(
          small: true,
          image: 'images/account/ic_menu_setting.png',
          text: AppLocalizations.of(context).accountSettingText,
          onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Settings(),
                  )),
        ),
        LogoutTile(),
      ],
    );
  }
}

class LogoutTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BuildListTile(
      small: true,
      image: 'images/account/ic_menu_logoutact.png',
      text: AppLocalizations.of(context).accountlogoutText,
      onTap: () {
        showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(AppLocalizations.of(context).loggingOut),
                content: Text(AppLocalizations.of(context).areYouSure),
                actions: <Widget>[
                  FlatButton(
                    child: Text(AppLocalizations.of(context).no),
                    textColor: kMainColor,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: kTransparentColor)),
                    onPressed: () => Navigator.pop(context),
                  ),
                  FlatButton(
                      child: Text(AppLocalizations.of(context).yes),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: kTransparentColor)),
                      textColor: kMainColor,
                      onPressed: () {
                        Phoenix.rebirth(context);
                      })
                ],
              );
            });
      },
    );
  }
}

class UserDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Fluttertoast.showToast(
                        msg: 'Click profile picture',
                        toastLength: Toast.LENGTH_SHORT);
                  },
                  child: Hero(
                    tag: 'profilePicture',
                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/user.png",
                        width: 70,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(AppLocalizations.of(context).nameEmployeeText,
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    .copyWith(
                                        color: kLightTextColor,
                                        fontSize: 15.0)),
                            Text(AppLocalizations.of(context).jobEmployeeText,
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    .copyWith(
                                        color: kLightTextColor,
                                        fontSize: 15.0)),
                          ]),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
