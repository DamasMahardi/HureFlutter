import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uihure/HomeOrderAccount/Home/Models/category.dart';
import 'package:uihure/HomeOrderAccount/Home/UI/Stores/stores.dart';
import 'package:uihure/HomeOrderAccount/Home/UI/Stores/tababsen.dart';
import 'package:uihure/Pages/items.dart';
import 'package:uihure/Locale/locales.dart';
import 'package:uihure/Routes/routes.dart';
import 'package:uihure/Themes/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';
//import 'package:uihure/Themes/style.dart';

import 'booking_row.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<bool> isSelected2 = [true, false];

  @override
  Widget build(BuildContext context) {
    final banner = [
      'assets/images/banner_1.png',
      'assets/images/banner_1.png',
      'assets/images/banner_1.png',
    ];
    final List<Category> categories = [
      Category('assets/images/ic_overtime.png',
          AppLocalizations.of(context).overtimeText),
      Category('assets/images/ic_directory.png',
          AppLocalizations.of(context).leaveTrackerText),
      Category('assets/images/ic_nearby.png',
          AppLocalizations.of(context).attendanceText),
      Category('assets/images/ic_temperature.png',
          AppLocalizations.of(context).thermoScanText),
      Category('assets/images/ic_payroll.png',
          AppLocalizations.of(context).payrollText),
      Category('assets/images/ic_blog.png',
          AppLocalizations.of(context).coursesText),
      Category('assets/images/ic_blood.png',
          AppLocalizations.of(context).benefitText),
      Category('assets/images/ic_announcement.png',
          AppLocalizations.of(context).announcementText),
      Category('assets/images/ic_shareapp.png',
          AppLocalizations.of(context).filetText),
    ];
    var appLocalization = AppLocalizations.of(context);
    String value = "New York, USA";
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Icon(Icons.location_on, color: kMainColor),
        ),
        title: Container(
          child: Row(
            children: [
              Text(
                value,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    .copyWith(fontSize: 15, color: Colors.grey[500]),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, PageRoutes.locationPage);
                },
                icon: Icon(Icons.keyboard_arrow_down, color: Colors.grey[500]),
              )
            ],
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 10, bottom: 15),
            child: Column(
              children: [
                Text(
                  AppLocalizations.of(context).nameCompanyText,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                // Spacer(),
                //_buildTop(),
                //BookingRow(),
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
                                ]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //margin: EdgeInsets.only(left: 10),

          Padding(
            padding: EdgeInsets.all(15.0),
            child: BookingRow(),
          ),
          // Padding(
          //   padding: EdgeInsets.all(15.0),
          //   child: Text(
          //     AppLocalizations.of(context).homeHureText1,
          //     style: Theme.of(context).textTheme.bodyText1,
          //   ),
          // ),
          // Container(
          //   height: 83.3,
          //   margin: EdgeInsets.only(left: 10),
          //   child: ListView.builder(
          //       shrinkWrap: true,
          //       physics: BouncingScrollPhysics(),
          //       scrollDirection: Axis.horizontal,
          //       itemCount: categories.length,
          //       itemBuilder: (context, index) {
          //         return InkWell(
          //           onTap: () => Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                   builder: (context) =>
          //                       StoresPage(categories[index].title))),
          //           child: Padding(
          //             padding: EdgeInsets.only(left: 10),
          //             child: Container(
          //               height: 83.3,
          //               width: 83.3,
          //               color: Theme.of(context).cardColor,
          //               child: Column(
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 crossAxisAlignment: CrossAxisAlignment.center,
          //                 children: [
          //                   Image.asset(
          //                     categories[index].image,
          //                     height: 37.3,
          //                     width: 41.3,
          //                   ),
          //                   SizedBox(
          //                     height: 16.0,
          //                   ),
          //                   Text(
          //                     categories[index].title,
          //                     style: Theme.of(context)
          //                         .textTheme
          //                         .caption
          //                         .copyWith(
          //                             fontWeight: FontWeight.bold,
          //                             fontSize: 10.0),
          //                   )
          //                 ],
          //               ),
          //             ),
          //           ),
          //         );
          //       }),
          // ),

          Padding(
            padding: EdgeInsets.only(left: 20, bottom: 15, top: 20),
            child: Row(
              children: [
                Text(
                  AppLocalizations.of(context).homeHureText1,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Spacer(),
              ],
            ),
          ),

          Container(
            height: 500,
            //margin: EdgeInsets.only(left: ),
            child: GridView.count(
              childAspectRatio: 1.1,
              shrinkWrap: true,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
              crossAxisCount: 3,
              scrollDirection: Axis.vertical,
              children: [
                Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/ic_overtime.png",
                        width: 70,
                        height: 70,
                      ),
                      Text(AppLocalizations.of(context).overtimeText,
                          style: Theme.of(context).textTheme.caption.copyWith(
                              color: kLightTextColor, fontSize: 15.0)),
                    ],
                  ),
                  color: Theme.of(context).cardColor,
                ),
                Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/ic_directory.png",
                        width: 70,
                        height: 70,
                      ),
                      Text(AppLocalizations.of(context).leaveTrackerText,
                          style: Theme.of(context).textTheme.caption.copyWith(
                              color: kLightTextColor, fontSize: 15.0)),
                    ],
                  ),
                  color: Theme.of(context).cardColor,
                ),
                Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/ic_nearby.png",
                        width: 70,
                        height: 70,
                      ),
                      Text(AppLocalizations.of(context).attendanceText,
                          style: Theme.of(context).textTheme.caption.copyWith(
                              color: kLightTextColor, fontSize: 15.0)),
                    ],
                  ),
                  color: Theme.of(context).cardColor,
                ),
                Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/ic_temperature.png",
                        width: 70,
                        height: 70,
                      ),
                      Text(AppLocalizations.of(context).thermoScanText,
                          style: Theme.of(context).textTheme.caption.copyWith(
                              color: kLightTextColor, fontSize: 15.0)),
                    ],
                  ),
                  color: Theme.of(context).cardColor,
                ),
                Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/ic_payroll.png",
                        width: 70,
                        height: 70,
                      ),
                      Text(AppLocalizations.of(context).payrollText,
                          style: Theme.of(context).textTheme.caption.copyWith(
                              color: kLightTextColor, fontSize: 15.0)),
                    ],
                  ),
                  color: Theme.of(context).cardColor,
                ),
                Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/ic_blog.png",
                        width: 70,
                        height: 70,
                      ),
                      Text(AppLocalizations.of(context).coursesText,
                          style: Theme.of(context).textTheme.caption.copyWith(
                              color: kLightTextColor, fontSize: 15.0)),
                    ],
                  ),
                  color: Theme.of(context).cardColor,
                ),
                Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/ic_blood.png",
                        width: 70,
                        height: 70,
                      ),
                      Text(AppLocalizations.of(context).benefitText,
                          style: Theme.of(context).textTheme.caption.copyWith(
                              color: kLightTextColor, fontSize: 15.0)),
                    ],
                  ),
                  color: Theme.of(context).cardColor,
                ),
                Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/ic_announcement.png",
                        width: 70,
                        height: 70,
                      ),
                      Text(AppLocalizations.of(context).announcementText,
                          style: Theme.of(context).textTheme.caption.copyWith(
                              color: kLightTextColor, fontSize: 15.0)),
                    ],
                  ),
                  color: Theme.of(context).cardColor,
                ),
                Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/ic_shareapp.png",
                        width: 70,
                        height: 70,
                      ),
                      Text(AppLocalizations.of(context).filetText,
                          style: Theme.of(context).textTheme.caption.copyWith(
                              color: kLightTextColor, fontSize: 15.0)),
                    ],
                  ),
                  color: Theme.of(context).cardColor,
                ),

                // quickGrid(context, "assets/images/user.png"),
                // quickGrid(context, "assets/images/user.png"),
                // quickGrid(context, "assets/images/user.png"),
                // quickGrid(context, "assets/images/user.png"),
                // quickGrid(context, "assets/images/user.png"),
                // quickGrid(context, "assets/images/user.png"),
              ],
            ),
          ),

          // Padding(
          //   padding: EdgeInsets.only(left: 20, bottom: 15, top: 20),
          //   child: Row(
          //     children: [
          //       Text(
          //         AppLocalizations.of(context).homeEmployeLeaveText,
          //         style: Theme.of(context).textTheme.bodyText1,
          //       ),
          //       Spacer(),
          //       GestureDetector(
          //         onTap: () {
          //           Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                 builder: (context) => StoresPage("Employees Leave"),
          //               ));
          //         },
          //         child: Text(
          //           AppLocalizations.of(context).homeDetailText,
          //           style: Theme.of(context)
          //               .textTheme
          //               .bodyText1
          //               .copyWith(color: kMainColor),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),

          // Container(
          //   height: 160,
          //   margin: EdgeInsets.only(left: 20),
          //   child: GridView.count(
          //     crossAxisCount: 2,
          //     mainAxisSpacing: 20,
          //     childAspectRatio: 0.36,
          //     shrinkWrap: true,
          //     physics: BouncingScrollPhysics(),
          //     scrollDirection: Axis.horizontal,
          //     children: [
          //       quickGrid(context, "assets/images/user.png"),
          //       quickGrid(context, "assets/images/user.png"),
          //       quickGrid(context, "assets/images/user.png"),
          //       quickGrid(context, "assets/images/user.png"),
          //       quickGrid(context, "assets/images/user.png"),
          //       quickGrid(context, "assets/images/user.png"),
          //     ],
          //   ),
          // ),

          // Padding(
          //   padding: EdgeInsets.all(20.0),
          //   child: Row(
          //     children: [
          //       Text(
          //         AppLocalizations.of(context).homeText2,
          //         style: Theme.of(context).textTheme.bodyText1,
          //       ),
          //       Spacer(),
          //     ],
          //   ),
          // ),
          // Container(
          //   height: 136,
          //   child: ListView.builder(
          //       shrinkWrap: true,
          //       physics: BouncingScrollPhysics(),
          //       scrollDirection: Axis.horizontal,
          //       itemCount: banner.length,
          //       itemBuilder: (context, index) {
          //         return Padding(
          //           padding: EdgeInsets.only(left: 20),
          //           child: Image.asset(banner[index]),
          //         );
          //       }),
          // ),
          // SizedBox(
          //   height: 10,
          // ),
        ],
      ),
    );
  }

  Widget _buildTop() {
    return Container(
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
                  width: 50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget quickGrid(BuildContext context, String image) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ItemsPage(AppLocalizations.of(context).store),
          ));
    },
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Image(
          image: AssetImage(image),
          height: 62.5,
        ),
        SizedBox(width: 8.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(AppLocalizations.of(context).nameEmployeeText,
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(color: kLightTextColor, fontSize: 10.0)),
            SizedBox(height: 8.0),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(AppLocalizations.of(context).jobEmployeeText,
                    style: Theme.of(context)
                        .textTheme
                        .caption
                        .copyWith(color: kLightTextColor, fontSize: 10.0)),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
