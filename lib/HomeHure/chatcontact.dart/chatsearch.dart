import 'dart:async';

import 'package:flutter/material.dart';
import 'package:uihure/Auth/login_navigator.dart';
import 'package:uihure/HomeHure/Account/UI/account_page.dart';
//import 'package:uihure/Components/custom_appbar.dart';
import 'package:uihure/Locale/locales.dart';
//import 'package:uihure/Routes/routes.dart';
import 'package:uihure/Themes/colors.dart';
import 'package:uihure/Pages/items.dart';
import 'package:uihure/reusable/shimmer_loading.dart';

class ChatContact extends StatefulWidget {
  String pageTitle;
  bool isBooking;

  ChatContact(this.pageTitle, [this.isBooking = false]);

  @override
  _ChatContactState createState() => _ChatContactState();
}

class _ChatContactState extends State<ChatContact> {
  final int noOfStores = 28;

  @override
  Widget build(BuildContext context) {
    TextEditingController _etSearch = TextEditingController();

    final _shimmerLoading = ShimmerLoading();

    bool _loading = true;
    Timer _timerDummy;

    // void _getData() {
    //   // this timer function is just for demo, so after 2 second, the shimmer loading will disappear and show the content
    //   // _timerDummy = Timer(Duration(seconds: 2), () {
    //   setState(() {
    //     _loading = false;
    //   });
    // }

    @override
    void initState() {
      super.initState();
    }

    @override
    void dispose() {
      _etSearch.dispose();
      _timerDummy?.cancel();
      super.dispose();
    }

    Future refreshData() async {
      setState(() {
        _loading = true;
      });
    }

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            size: 30,
          ),
          onPressed: () {
            Navigator.pushNamed(context, LoginRoutes.homeMenu);
          },
        ),
        title: Text(
          widget.pageTitle,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        // actions: [
        //   IconButton(
        //     icon: Icon(Icons.search),
        //     onPressed: () {/*......*/},
        //   ),
        // ],
        bottom: PreferredSize(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                color: Colors.grey[100],
                width: 1.0,
              )),
            ),
            padding: EdgeInsets.fromLTRB(16, 0, 16, 12),
            height: kToolbarHeight,
            child: TextFormField(
              controller: _etSearch,
              textAlignVertical: TextAlignVertical.bottom,
              maxLines: 1,
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              onChanged: (textValue) {
                // setState(() {});
              },
              decoration: InputDecoration(
                fillColor: Colors.grey[100],
                filled: true,
                hintText: 'Search Contact',
                prefixIcon: Icon(Icons.search, color: Colors.grey[500]),
                suffixIcon: (_etSearch.text == '')
                    ? null
                    : GestureDetector(
                        onTap: () {
                          setState(() {
                            _etSearch = TextEditingController(text: '');
                          });
                        },
                        child: Icon(Icons.close, color: Colors.grey[500])),
                focusedBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color: Colors.grey[200])),
                enabledBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  borderSide: BorderSide(color: Colors.grey[200]),
                ),
              ),
            ),
          ),
          preferredSize: Size.fromHeight(kToolbarHeight),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: refreshData,
        child: ListView(
          physics: BouncingScrollPhysics(),
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
              child: Text(
                '$noOfStores ' + AppLocalizations.of(context).searchEmloyeeText,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(color: kHintColor, fontWeight: FontWeight.bold),
              ),
            ),
            InkWell(
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                child: Row(
                  children: <Widget>[
                    Image(
                      image: AssetImage("images/user.png"),
                      height: 93.3,
                    ),
                    SizedBox(width: 13.3),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    AppLocalizations.of(context)
                                        .nameEmployeeText,
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption
                                        .copyWith(
                                            color: kLightTextColor,
                                            fontSize: 15.0)),
                                Text(
                                    AppLocalizations.of(context)
                                        .jobEmployeeText,
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption
                                        .copyWith(
                                            color: kLightTextColor,
                                            fontSize: 15.0)),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.chat,
                                      color: kMainColor,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(Icons.video_call, color: kMainColor),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(Icons.call, color: kMainColor),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(Icons.email, color: kMainColor)
                                  ],
                                )
                              ]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            InkWell(
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                child: Row(
                  children: <Widget>[
                    Image(
                      image: AssetImage("images/user.png"),
                      height: 93.3,
                    ),
                    SizedBox(width: 13.3),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    AppLocalizations.of(context)
                                        .nameEmployeeText,
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption
                                        .copyWith(
                                            color: kLightTextColor,
                                            fontSize: 15.0)),
                                Text(
                                    AppLocalizations.of(context)
                                        .jobEmployeeText,
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption
                                        .copyWith(
                                            color: kLightTextColor,
                                            fontSize: 15.0)),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.chat,
                                      color: kMainColor,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(Icons.video_call, color: kMainColor),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(Icons.call, color: kMainColor),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(Icons.email, color: kMainColor)
                                  ],
                                )
                              ]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            InkWell(
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                child: Row(
                  children: <Widget>[
                    Image(
                      image: AssetImage("images/user.png"),
                      height: 93.3,
                    ),
                    SizedBox(width: 13.3),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    AppLocalizations.of(context)
                                        .nameEmployeeText,
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption
                                        .copyWith(
                                            color: kLightTextColor,
                                            fontSize: 15.0)),
                                Text(
                                    AppLocalizations.of(context)
                                        .jobEmployeeText,
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption
                                        .copyWith(
                                            color: kLightTextColor,
                                            fontSize: 15.0)),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.chat,
                                      color: kMainColor,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(Icons.video_call, color: kMainColor),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(Icons.call, color: kMainColor),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(Icons.email, color: kMainColor)
                                  ],
                                )
                              ]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            InkWell(
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                child: Row(
                  children: <Widget>[
                    Image(
                      image: AssetImage("images/user.png"),
                      height: 93.3,
                    ),
                    SizedBox(width: 13.3),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    AppLocalizations.of(context)
                                        .nameEmployeeText,
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption
                                        .copyWith(
                                            color: kLightTextColor,
                                            fontSize: 15.0)),
                                Text(
                                    AppLocalizations.of(context)
                                        .jobEmployeeText,
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption
                                        .copyWith(
                                            color: kLightTextColor,
                                            fontSize: 15.0)),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.chat,
                                      color: kMainColor,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(Icons.video_call, color: kMainColor),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(Icons.call, color: kMainColor),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(Icons.email, color: kMainColor)
                                  ],
                                )
                              ]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            InkWell(
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                child: Row(
                  children: <Widget>[
                    Image(
                      image: AssetImage("images/user.png"),
                      height: 93.3,
                    ),
                    SizedBox(width: 13.3),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    AppLocalizations.of(context)
                                        .nameEmployeeText,
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption
                                        .copyWith(
                                            color: kLightTextColor,
                                            fontSize: 15.0)),
                                Text(
                                    AppLocalizations.of(context)
                                        .jobEmployeeText,
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption
                                        .copyWith(
                                            color: kLightTextColor,
                                            fontSize: 15.0)),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.chat,
                                      color: kMainColor,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(Icons.video_call, color: kMainColor),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(Icons.call, color: kMainColor),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(Icons.email, color: kMainColor)
                                  ],
                                )
                              ]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            InkWell(
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                child: Row(
                  children: <Widget>[
                    Image(
                      image: AssetImage("images/user.png"),
                      height: 93.3,
                    ),
                    SizedBox(width: 13.3),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    AppLocalizations.of(context)
                                        .nameEmployeeText,
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption
                                        .copyWith(
                                            color: kLightTextColor,
                                            fontSize: 15.0)),
                                Text(
                                    AppLocalizations.of(context)
                                        .jobEmployeeText,
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption
                                        .copyWith(
                                            color: kLightTextColor,
                                            fontSize: 15.0)),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.chat,
                                      color: kMainColor,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(Icons.video_call, color: kMainColor),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(Icons.call, color: kMainColor),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(Icons.email, color: kMainColor)
                                  ],
                                )
                              ]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
