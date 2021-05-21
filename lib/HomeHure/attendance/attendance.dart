import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:uihure/Auth/login_navigator.dart';
import 'package:uihure/Components/bottom_bar.dart';
import 'package:uihure/Components/custom_appbar.dart';
import 'package:uihure/Components/entry_field.dart';
import 'package:uihure/HomeOrderAccount/Home/UI/Stores/stores.dart';
import 'package:uihure/HomeOrderAccount/Home/UI/booking_row.dart';
import 'package:uihure/HomeOrderAccount/Home/UI/choose_ordering_method.dart';
import 'package:uihure/Locale/locales.dart';
import 'package:uihure/Routes/routes.dart';
import 'package:uihure/Themes/colors.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

List<String> list = ['Extra Cheese', 'Extra Mayonnaise', 'Extra Veggies'];
List<String> list1 = ['\$ 3.00', '\$ 2.00', '\$ 1.50'];

class ItemsAttendance extends StatefulWidget {
  String name;
  bool isBooking;
  ItemsAttendance(this.name, [this.isBooking = false]);

  @override
  _ItemsAttendanceState createState() => _ItemsAttendanceState();
}

class _ItemsAttendanceState extends State<ItemsAttendance> {
  bool itemAdded = false;
  int itemCount = 0;
  int itemCount1 = 0;
  int itemCount2 = 0;

  @override
  Widget build(BuildContext context) {
    var appLocalization = AppLocalizations.of(context);
    final List<Tab> tabs = <Tab>[
      Tab(text: appLocalization.attendanceTabText.toUpperCase()),
      Tab(text: appLocalization.attendanceWorkshiftText.toUpperCase()),
      Tab(text: appLocalization.attendanceMontlyText.toUpperCase()),
    ];
    return Material(
      child: Stack(
        children: <Widget>[
          DefaultTabController(
            length: tabs.length,
            child: Scaffold(
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
                    AppLocalizations.of(context).attendanceBarText,
                    style: Theme.of(context)
                        .textTheme
                        .caption
                        .copyWith(fontSize: 20),
                  ),
                  bottom: TabBar(
                    tabs: [
                      Tab(
                          text:
                              appLocalization.attendanceTabText.toUpperCase()),
                      Tab(
                          text: appLocalization.attendanceWorkshiftText
                              .toUpperCase()),
                      Tab(
                          text: appLocalization.attendanceMontlyText
                              .toUpperCase()),
                    ],
                    isScrollable: true,
                    labelColor: kMainColor,
                    unselectedLabelColor: kLightTextColor,
                    indicatorPadding: EdgeInsets.symmetric(horizontal: 24.0),
                  ),
                ),
                body: TabBarView(
                  children: <Widget>[
                    Container(
                        color: Theme.of(context).cardColor,
                        child: ListView(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Today (TODAY WORKSHIFT)",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption
                                                  .copyWith(
                                                      fontSize: 20,
                                                      color: kMainColor),
                                              textAlign: TextAlign.right,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        color: Colors.grey[300],
                                      ),
                                      //Container(height: 20),
                                      //Container(color: Colors.grey[300], height: 1),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            vertical: 20, horizontal: 10),
                                        child: Table(
                                          // border: TableBorder.symmetric(
                                          //     inside: BorderSide(
                                          //         width: 1, color: Colors.blue),
                                          //     outside: BorderSide(width: 1)),

                                          columnWidths: {
                                            0: FixedColumnWidth(80),
                                            1: FixedColumnWidth(80),
                                            2: FixedColumnWidth(110),
                                            3: FixedColumnWidth(110),
                                          },

                                          //border: TableBorder.all(),
                                          children: [
                                            TableRow(children: [
                                              Text(
                                                  AppLocalizations.of(context)
                                                      .attendanceTimeinText,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          color:
                                                              kLightTextColor,
                                                          fontSize: 15.0)),
                                              Text(
                                                  AppLocalizations.of(context)
                                                      .attendanceBreakstartnText,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          color:
                                                              kLightTextColor,
                                                          fontSize: 15.0)),
                                              TableCell(
                                                child: Text(
                                                  AppLocalizations.of(context)
                                                      .attendanceBreakendText,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          color:
                                                              kLightTextColor,
                                                          fontSize: 15.0),
                                                  textAlign: TextAlign.right,
                                                ),
                                              ),
                                              TableCell(
                                                child: Text(
                                                  AppLocalizations.of(context)
                                                      .attendanceTimeOutText,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          color:
                                                              kLightTextColor,
                                                          fontSize: 15.0),
                                                  textAlign: TextAlign.right,
                                                ),
                                              )
                                            ]),
                                            TableRow(children: [
                                              TableCell(
                                                child: Text("08:00"),
                                              ),
                                              TableCell(
                                                child: Text("12.00"),
                                              ),
                                              TableCell(
                                                child: Text(
                                                  "13.00",
                                                  textAlign: TextAlign.right,
                                                ),
                                              ),
                                              TableCell(
                                                child: Text(
                                                  "17:00",
                                                  textAlign: TextAlign.right,
                                                ),
                                              ),
                                            ]),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  child: Column(
                                    children: [
                                      Container(
                                        // margin: EdgeInsets.all(15),
                                        margin: EdgeInsets.symmetric(
                                            vertical: 20, horizontal: 10),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(Icons.arrow_forward),
                                                    Text(
                                                      "24.03.2021 08.12",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .caption
                                                          .copyWith(
                                                              fontSize: 20,
                                                              color:
                                                                  kMainTextColor),
                                                      textAlign:
                                                          TextAlign.right,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                        border:
                                                            InputBorder.none),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Divider(
                                              color: Colors.grey[300],
                                            ),
                                            Row(
                                              children: [
                                                Icon(Icons.arrow_back),
                                                Text(
                                                  "24.03.2021 17.12",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          fontSize: 20,
                                                          color:
                                                              kMainTextColor),
                                                  textAlign: TextAlign.right,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                        border:
                                                            InputBorder.none),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            // Container(
                                            //     color: Colors.grey[300],
                                            //     height: 1),
                                            Divider(
                                              color: Colors.grey[300],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  "24.03.2021",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          fontSize: 20,
                                                          color:
                                                              kMainTextColor),
                                                  textAlign: TextAlign.right,
                                                ),
                                                // SizedBox(
                                                //   width: 190,
                                                // ),
                                                Text(
                                                  AppLocalizations.of(context)
                                                      .attendanceClockOutText,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          color: kMainColor,
                                                          fontSize: 15.0),
                                                  textAlign: TextAlign.right,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                    Container(
                        color: Theme.of(context).cardColor,
                        child: ListView(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              AppLocalizations.of(context)
                                                  .attendandaysudayText,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption
                                                  .copyWith(
                                                      fontSize: 20,
                                                      color: kMainColor),
                                              textAlign: TextAlign.right,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        color: Colors.grey[300],
                                      ),
                                      //Container(height: 20),
                                      //Container(color: Colors.grey[300], height: 1),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            vertical: 20, horizontal: 10),
                                        child: Table(
                                          // border: TableBorder.symmetric(
                                          //     inside: BorderSide(
                                          //         width: 1, color: Colors.blue),
                                          //     outside: BorderSide(width: 1)),

                                          columnWidths: {
                                            0: FixedColumnWidth(80),
                                            1: FixedColumnWidth(80),
                                            2: FixedColumnWidth(110),
                                            3: FixedColumnWidth(110),
                                          },

                                          //border: TableBorder.all(),
                                          children: [
                                            TableRow(children: [
                                              Text(
                                                  AppLocalizations.of(context)
                                                      .attendanceTimeinText,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          color:
                                                              kLightTextColor,
                                                          fontSize: 15.0)),
                                              Text(
                                                  AppLocalizations.of(context)
                                                      .attendanceBreakstartnText,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          color:
                                                              kLightTextColor,
                                                          fontSize: 15.0)),
                                              TableCell(
                                                child: Text(
                                                  AppLocalizations.of(context)
                                                      .attendanceBreakendText,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          color:
                                                              kLightTextColor,
                                                          fontSize: 15.0),
                                                  textAlign: TextAlign.right,
                                                ),
                                              ),
                                              TableCell(
                                                child: Text(
                                                  AppLocalizations.of(context)
                                                      .attendanceTimeOutText,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          color:
                                                              kLightTextColor,
                                                          fontSize: 15.0),
                                                  textAlign: TextAlign.right,
                                                ),
                                              )
                                            ]),
                                            TableRow(children: [
                                              TableCell(
                                                child: Text("08:00"),
                                              ),
                                              TableCell(
                                                child: Text("12.00"),
                                              ),
                                              TableCell(
                                                child: Text(
                                                  "13.00",
                                                  textAlign: TextAlign.right,
                                                ),
                                              ),
                                              TableCell(
                                                child: Text(
                                                  "17:00",
                                                  textAlign: TextAlign.right,
                                                ),
                                              ),
                                            ]),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              AppLocalizations.of(context)
                                                  .attendanceModayBarText,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption
                                                  .copyWith(
                                                    fontSize: 20,
                                                  ),
                                              textAlign: TextAlign.right,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        color: Colors.grey[300],
                                      ),
                                      //Container(height: 20),
                                      //Container(color: Colors.grey[300], height: 1),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            vertical: 20, horizontal: 10),
                                        child: Table(
                                          // border: TableBorder.symmetric(
                                          //     inside: BorderSide(
                                          //         width: 1, color: Colors.blue),
                                          //     outside: BorderSide(width: 1)),

                                          columnWidths: {
                                            0: FixedColumnWidth(80),
                                            1: FixedColumnWidth(80),
                                            2: FixedColumnWidth(110),
                                            3: FixedColumnWidth(110),
                                          },

                                          //border: TableBorder.all(),
                                          children: [
                                            TableRow(children: [
                                              Text(
                                                  AppLocalizations.of(context)
                                                      .attendanceTimeinText,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          color:
                                                              kLightTextColor,
                                                          fontSize: 15.0)),
                                              Text(
                                                  AppLocalizations.of(context)
                                                      .attendanceBreakstartnText,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          color:
                                                              kLightTextColor,
                                                          fontSize: 15.0)),
                                              TableCell(
                                                child: Text(
                                                  AppLocalizations.of(context)
                                                      .attendanceBreakendText,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          color:
                                                              kLightTextColor,
                                                          fontSize: 15.0),
                                                  textAlign: TextAlign.right,
                                                ),
                                              ),
                                              TableCell(
                                                child: Text(
                                                  AppLocalizations.of(context)
                                                      .attendanceTimeOutText,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          color:
                                                              kLightTextColor,
                                                          fontSize: 15.0),
                                                  textAlign: TextAlign.right,
                                                ),
                                              )
                                            ]),
                                            TableRow(children: [
                                              TableCell(
                                                child: Text("08:30"),
                                              ),
                                              TableCell(
                                                child: Text("12.00"),
                                              ),
                                              TableCell(
                                                child: Text(
                                                  "13.00",
                                                  textAlign: TextAlign.right,
                                                ),
                                              ),
                                              TableCell(
                                                child: Text(
                                                  "17:00",
                                                  textAlign: TextAlign.right,
                                                ),
                                              ),
                                            ]),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              AppLocalizations.of(context)
                                                  .attendanceTuesdayBarText,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption
                                                  .copyWith(
                                                    fontSize: 20,
                                                  ),
                                              textAlign: TextAlign.right,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        color: Colors.grey[300],
                                      ),
                                      //Container(height: 20),
                                      //Container(color: Colors.grey[300], height: 1),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            vertical: 20, horizontal: 10),
                                        child: Table(
                                          // border: TableBorder.symmetric(
                                          //     inside: BorderSide(
                                          //         width: 1, color: Colors.blue),
                                          //     outside: BorderSide(width: 1)),

                                          columnWidths: {
                                            0: FixedColumnWidth(80),
                                            1: FixedColumnWidth(80),
                                            2: FixedColumnWidth(110),
                                            3: FixedColumnWidth(110),
                                          },

                                          //border: TableBorder.all(),
                                          children: [
                                            TableRow(children: [
                                              Text(
                                                  AppLocalizations.of(context)
                                                      .attendanceTimeinText,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          color:
                                                              kLightTextColor,
                                                          fontSize: 15.0)),
                                              Text(
                                                  AppLocalizations.of(context)
                                                      .attendanceBreakstartnText,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          color:
                                                              kLightTextColor,
                                                          fontSize: 15.0)),
                                              TableCell(
                                                child: Text(
                                                  AppLocalizations.of(context)
                                                      .attendanceBreakendText,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          color:
                                                              kLightTextColor,
                                                          fontSize: 15.0),
                                                  textAlign: TextAlign.right,
                                                ),
                                              ),
                                              TableCell(
                                                child: Text(
                                                  AppLocalizations.of(context)
                                                      .attendanceTimeOutText,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          color:
                                                              kLightTextColor,
                                                          fontSize: 15.0),
                                                  textAlign: TextAlign.right,
                                                ),
                                              )
                                            ]),
                                            TableRow(children: [
                                              TableCell(
                                                child: Text("08:30"),
                                              ),
                                              TableCell(
                                                child: Text("12.00"),
                                              ),
                                              TableCell(
                                                child: Text(
                                                  "13.00",
                                                  textAlign: TextAlign.right,
                                                ),
                                              ),
                                              TableCell(
                                                child: Text(
                                                  "17:00",
                                                  textAlign: TextAlign.right,
                                                ),
                                              ),
                                            ]),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              AppLocalizations.of(context)
                                                  .attendancewednesdayBarText,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption
                                                  .copyWith(
                                                    fontSize: 20,
                                                  ),
                                              textAlign: TextAlign.right,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        color: Colors.grey[300],
                                      ),
                                      //Container(height: 20),
                                      //Container(color: Colors.grey[300], height: 1),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            vertical: 20, horizontal: 10),
                                        child: Table(
                                          // border: TableBorder.symmetric(
                                          //     inside: BorderSide(
                                          //         width: 1, color: Colors.blue),
                                          //     outside: BorderSide(width: 1)),

                                          columnWidths: {
                                            0: FixedColumnWidth(80),
                                            1: FixedColumnWidth(80),
                                            2: FixedColumnWidth(110),
                                            3: FixedColumnWidth(110),
                                          },

                                          //border: TableBorder.all(),
                                          children: [
                                            TableRow(children: [
                                              Text(
                                                  AppLocalizations.of(context)
                                                      .attendanceTimeinText,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          color:
                                                              kLightTextColor,
                                                          fontSize: 15.0)),
                                              Text(
                                                  AppLocalizations.of(context)
                                                      .attendanceBreakstartnText,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          color:
                                                              kLightTextColor,
                                                          fontSize: 15.0)),
                                              TableCell(
                                                child: Text(
                                                  AppLocalizations.of(context)
                                                      .attendanceBreakendText,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          color:
                                                              kLightTextColor,
                                                          fontSize: 15.0),
                                                  textAlign: TextAlign.right,
                                                ),
                                              ),
                                              TableCell(
                                                child: Text(
                                                  AppLocalizations.of(context)
                                                      .attendanceTimeOutText,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          color:
                                                              kLightTextColor,
                                                          fontSize: 15.0),
                                                  textAlign: TextAlign.right,
                                                ),
                                              )
                                            ]),
                                            TableRow(children: [
                                              TableCell(
                                                child: Text("08:30"),
                                              ),
                                              TableCell(
                                                child: Text("12.00"),
                                              ),
                                              TableCell(
                                                child: Text(
                                                  "13.00",
                                                  textAlign: TextAlign.right,
                                                ),
                                              ),
                                              TableCell(
                                                child: Text(
                                                  "17:00",
                                                  textAlign: TextAlign.right,
                                                ),
                                              ),
                                            ]),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              AppLocalizations.of(context)
                                                  .attendancethursdayBarText,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption
                                                  .copyWith(
                                                    fontSize: 20,
                                                  ),
                                              textAlign: TextAlign.right,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        color: Colors.grey[300],
                                      ),
                                      //Container(height: 20),
                                      //Container(color: Colors.grey[300], height: 1),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            vertical: 20, horizontal: 10),
                                        child: Table(
                                          // border: TableBorder.symmetric(
                                          //     inside: BorderSide(
                                          //         width: 1, color: Colors.blue),
                                          //     outside: BorderSide(width: 1)),

                                          columnWidths: {
                                            0: FixedColumnWidth(80),
                                            1: FixedColumnWidth(80),
                                            2: FixedColumnWidth(110),
                                            3: FixedColumnWidth(110),
                                          },

                                          //border: TableBorder.all(),
                                          children: [
                                            TableRow(children: [
                                              Text(
                                                  AppLocalizations.of(context)
                                                      .attendanceTimeinText,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          color:
                                                              kLightTextColor,
                                                          fontSize: 15.0)),
                                              Text(
                                                  AppLocalizations.of(context)
                                                      .attendanceBreakstartnText,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          color:
                                                              kLightTextColor,
                                                          fontSize: 15.0)),
                                              TableCell(
                                                child: Text(
                                                  AppLocalizations.of(context)
                                                      .attendanceBreakendText,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          color:
                                                              kLightTextColor,
                                                          fontSize: 15.0),
                                                  textAlign: TextAlign.right,
                                                ),
                                              ),
                                              TableCell(
                                                child: Text(
                                                  AppLocalizations.of(context)
                                                      .attendanceTimeOutText,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          color:
                                                              kLightTextColor,
                                                          fontSize: 15.0),
                                                  textAlign: TextAlign.right,
                                                ),
                                              )
                                            ]),
                                            TableRow(children: [
                                              TableCell(
                                                child: Text("08:30"),
                                              ),
                                              TableCell(
                                                child: Text("12.00"),
                                              ),
                                              TableCell(
                                                child: Text(
                                                  "13.00",
                                                  textAlign: TextAlign.right,
                                                ),
                                              ),
                                              TableCell(
                                                child: Text(
                                                  "17:00",
                                                  textAlign: TextAlign.right,
                                                ),
                                              ),
                                            ]),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              AppLocalizations.of(context)
                                                  .attendanceFridayBarText,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption
                                                  .copyWith(
                                                    fontSize: 20,
                                                  ),
                                              textAlign: TextAlign.right,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        color: Colors.grey[300],
                                      ),
                                      //Container(height: 20),
                                      //Container(color: Colors.grey[300], height: 1),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            vertical: 20, horizontal: 10),
                                        child: Table(
                                          // border: TableBorder.symmetric(
                                          //     inside: BorderSide(
                                          //         width: 1, color: Colors.blue),
                                          //     outside: BorderSide(width: 1)),

                                          columnWidths: {
                                            0: FixedColumnWidth(80),
                                            1: FixedColumnWidth(80),
                                            2: FixedColumnWidth(110),
                                            3: FixedColumnWidth(110),
                                          },

                                          //border: TableBorder.all(),
                                          children: [
                                            TableRow(children: [
                                              Text(
                                                  AppLocalizations.of(context)
                                                      .attendanceTimeinText,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          color:
                                                              kLightTextColor,
                                                          fontSize: 15.0)),
                                              Text(
                                                  AppLocalizations.of(context)
                                                      .attendanceBreakstartnText,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          color:
                                                              kLightTextColor,
                                                          fontSize: 15.0)),
                                              TableCell(
                                                child: Text(
                                                  AppLocalizations.of(context)
                                                      .attendanceBreakendText,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          color:
                                                              kLightTextColor,
                                                          fontSize: 15.0),
                                                  textAlign: TextAlign.right,
                                                ),
                                              ),
                                              TableCell(
                                                child: Text(
                                                  AppLocalizations.of(context)
                                                      .attendanceTimeOutText,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          color:
                                                              kLightTextColor,
                                                          fontSize: 15.0),
                                                  textAlign: TextAlign.right,
                                                ),
                                              )
                                            ]),
                                            TableRow(children: [
                                              TableCell(
                                                child: Text("08:30"),
                                              ),
                                              TableCell(
                                                child: Text("12.00"),
                                              ),
                                              TableCell(
                                                child: Text(
                                                  "13.00",
                                                  textAlign: TextAlign.right,
                                                ),
                                              ),
                                              TableCell(
                                                child: Text(
                                                  "17:00",
                                                  textAlign: TextAlign.right,
                                                ),
                                              ),
                                            ]),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              AppLocalizations.of(context)
                                                  .attendanceSaturdayBarText,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption
                                                  .copyWith(
                                                    fontSize: 20,
                                                  ),
                                              textAlign: TextAlign.right,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        color: Colors.grey[300],
                                      ),
                                      //Container(height: 20),
                                      //Container(color: Colors.grey[300], height: 1),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            vertical: 20, horizontal: 10),
                                        child: Table(
                                          // border: TableBorder.symmetric(
                                          //     inside: BorderSide(
                                          //         width: 1, color: Colors.blue),
                                          //     outside: BorderSide(width: 1)),

                                          columnWidths: {
                                            0: FixedColumnWidth(80),
                                            1: FixedColumnWidth(80),
                                            2: FixedColumnWidth(110),
                                            3: FixedColumnWidth(110),
                                          },

                                          //border: TableBorder.all(),
                                          children: [
                                            TableRow(children: [
                                              Text(
                                                  AppLocalizations.of(context)
                                                      .attendanceTimeinText,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          color:
                                                              kLightTextColor,
                                                          fontSize: 15.0)),
                                              Text(
                                                  AppLocalizations.of(context)
                                                      .attendanceBreakstartnText,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          color:
                                                              kLightTextColor,
                                                          fontSize: 15.0)),
                                              TableCell(
                                                child: Text(
                                                  AppLocalizations.of(context)
                                                      .attendanceBreakendText,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          color:
                                                              kLightTextColor,
                                                          fontSize: 15.0),
                                                  textAlign: TextAlign.right,
                                                ),
                                              ),
                                              TableCell(
                                                child: Text(
                                                  AppLocalizations.of(context)
                                                      .attendanceTimeOutText,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption
                                                      .copyWith(
                                                          color:
                                                              kLightTextColor,
                                                          fontSize: 15.0),
                                                  textAlign: TextAlign.right,
                                                ),
                                              )
                                            ]),
                                            TableRow(children: [
                                              TableCell(
                                                child: Text("08:30"),
                                              ),
                                              TableCell(
                                                child: Text("12.00"),
                                              ),
                                              TableCell(
                                                child: Text(
                                                  "12.00",
                                                  textAlign: TextAlign.right,
                                                ),
                                              ),
                                              TableCell(
                                                child: Text(
                                                  "13:30",
                                                  textAlign: TextAlign.right,
                                                ),
                                              ),
                                            ]),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                    Container(
                      color: Theme.of(context).cardColor,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            color: Theme.of(context).scaffoldBackgroundColor,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [Container()],
                                ),
                                //Contai
                                //Container(height: 20),
                                //Container(color: Colors.grey[300], height: 1),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 10),
                                  child: Table(
                                    // border: TableBorder.symmetric(
                                    //     inside: BorderSide(
                                    //         width: 1, color: Colors.blue),
                                    //     outside: BorderSide(width: 1)),

                                    columnWidths: {
                                      0: FixedColumnWidth(80),
                                      1: FixedColumnWidth(80),
                                      2: FixedColumnWidth(110),
                                      3: FixedColumnWidth(110),
                                    },

                                    //border: TableBorder.all(),
                                    children: [
                                      TableRow(children: [
                                        Text(
                                            AppLocalizations.of(context)
                                                .attendanceCodeText,
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption
                                                .copyWith(
                                                    color: kLightTextColor,
                                                    fontSize: 15.0)),
                                        Text(
                                            AppLocalizations.of(context)
                                                .attendanceNameText,
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption
                                                .copyWith(
                                                    color: kLightTextColor,
                                                    fontSize: 15.0)),
                                        TableCell(
                                          child: Text(
                                            AppLocalizations.of(context)
                                                .attendanceTotalHourText,
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption
                                                .copyWith(
                                                    color: kLightTextColor,
                                                    fontSize: 15.0),
                                            textAlign: TextAlign.right,
                                          ),
                                        ),
                                        TableCell(
                                          child: Text(
                                            AppLocalizations.of(context)
                                                .attendanceEfectiveText,
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption
                                                .copyWith(
                                                    color: kLightTextColor,
                                                    fontSize: 15.0),
                                            textAlign: TextAlign.right,
                                          ),
                                        )
                                      ]),
                                      TableRow(children: [
                                        TableCell(
                                          child: Text("WS-02"),
                                        ),
                                        TableCell(
                                          child: Text("Reguler"),
                                        ),
                                        TableCell(
                                          child: Text(
                                            "40",
                                            textAlign: TextAlign.right,
                                          ),
                                        ),
                                        TableCell(
                                          child: Text(
                                            "Mar 9, 2021",
                                            textAlign: TextAlign.right,
                                          ),
                                        ),
                                      ]),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
