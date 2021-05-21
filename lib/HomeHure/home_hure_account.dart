import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:uihure/Chat/UI/animated_bottom_bar.dart';
import 'package:uihure/HomeHure/Home/homehure.dart';
import 'package:uihure/HomeHure/Notification/notification.dart';
import 'package:uihure/HomeHure/chatcontact.dart/chatsearch.dart';
import 'package:uihure/HomeHure/home_hure_account.dart';
import 'package:uihure/HomeHure/Account/UI/account_page.dart';
import 'package:uihure/HomeOrderAccount/Home/UI/Stores/stores.dart';
import 'package:uihure/HomeOrderAccount/Home/UI/home.dart';
import 'package:uihure/HomeOrderAccount/Order/UI/order_page.dart';
import 'package:uihure/Locale/locales.dart';
import 'package:uihure/Themes/colors.dart';


class HomeAccontHure extends StatefulWidget {
  int index;
  HomeAccontHure([this.index = 0]);
  @override
  _HomeAccontHureState createState() => _HomeAccontHureState();
}

class _HomeAccontHureState extends State<HomeAccontHure> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.index;
  }

  // void onTapped(int index) {
  //   setState(() {
  //     _currentIndex = index;
  //   });
  // }

  static String bottomIconHome = 'images/footermenu/ic_home.png';

  //static String bottomIconMenu = 'images/footermenu/menu.png';

  static String bottomIconAccount = 'images/footermenu/ic_profile.png';

  static String bottomIconNotification = 'images/footermenu/bell.png';

  static String bottomIconChat = 'images/footermenu/chat.png';

   Future<bool> onBackButton(context) async {
        // tampilkan dialog saat user menekan tombol back
        // jika ditekan ok maka akan kembali ke halaman sebelumnya
        return showDialog(
            context: context,
            builder: (context){
                return AlertDialog(
                    title: Text(AppLocalizations.of(context)
                                    .backbuttonhomeTitleText),
                    content:  Text(AppLocalizations.of(context)
                                    .backbuttonhomeContentText),
                    actions: <Widget>[
                        FlatButton(
                                    child: Text(AppLocalizations.of(context)
                                        .backbuttonhomeYesText),
                                    textColor: kMainColor,
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: kTransparentColor)),
                                    onPressed: (){
                                // tutup modal dan halaman ini
                                Navigator.of(context).pop(true);
                            },
                                  ),
                                  FlatButton(
                                      child: Text(AppLocalizations.of(context)
                                          .backbuttonhomeNoText),
                                      shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                              color: kTransparentColor)),
                                      textColor: kMainColor,
                                      onPressed: () {
                                // tutup modal dan halaman ini
                                Navigator.of(context).pop(false);
                            },)
                    ],
                );
            }
        );
    }

  @override
  Widget build(BuildContext context) {
    var appLocalization = AppLocalizations.of(context);
    final List<BarItem> barItems = [
      BarItem(
        text: appLocalization.homeText,
        image: bottomIconHome,
      ),
      BarItem(
        text: appLocalization.chatText,
        image: bottomIconChat,
      ),
      // BarItem(
      //   text: appLocalization.menuText,
      //   image: bottomIconMenu,
      // ),
      BarItem(
        text: appLocalization.notificationText,
        image: bottomIconNotification,
      ),
      BarItem(
        text: appLocalization.accountText,
        image: bottomIconAccount,
      ),
    ];

    final List<Widget> _children = [
      HomePageHure(),
      ChatContact("Chat Contact"),
      Notification1Page(),
      AccountPage(),
    ];
    return WillPopScope(
            onWillPop: (){
                // panggil method onBackButton saat user menekan tombol back
                return onBackButton(context);
            },
            child: Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: AnimatedBottomBar(
          barItems: barItems,
          onBarTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          }),
    ),
    );
  }
}
