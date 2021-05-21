import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uihure/Auth/login_navigator.dart';
import 'package:uihure/Components/bottom_bar.dart';
import 'package:uihure/Components/button_bar_hure.dart';
import 'package:uihure/HomeHure/Home/tabclock.dart';
import 'package:uihure/HomeHure/attendance/attendance.dart';
import 'package:uihure/HomeOrderAccount/Home/Models/category.dart';
import 'package:uihure/HomeOrderAccount/Home/UI/Stores/stores.dart';
import 'package:uihure/HomeOrderAccount/Home/UI/Stores/tababsen.dart';
import 'package:uihure/Pages/items.dart';
import 'package:uihure/Locale/locales.dart';
import 'package:uihure/Routes/routes.dart';
import 'package:uihure/Themes/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:uihure/model/employee/EmployeeInformationDto.dart';
import 'package:uihure/service/identity/identity_service.dart';
//import 'package:uihure/Themes/style.dart';

class HomePageHure extends StatelessWidget {
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
  Future<EmployeeInformationDto> futureEmployee;

  EmployeeInformationDto employeeInformationDto = EmployeeInformationDto();

  IdentityService identityService = IdentityService();

    @override
  void initState() { 
  //  var data=  identityService.getEmployeeId();
  super.initState();
  futureEmployee= identityService.getEmployeeId();
    
    
  }

  @override
  Widget build(BuildContext context) {
    final banner = [
      'images/banner_1.png',
      'images/banner_1.png',
      'images/banner_1.png',
    ];
    final List<Category> categories = [
      Category('images/ic_overtime.png',
          AppLocalizations.of(context).overtimeText),
      Category('images/ic_directory.png',
          AppLocalizations.of(context).leaveTrackerText),
      Category('images/ic_nearby.png',
          AppLocalizations.of(context).attendanceText),
      Category('images/ic_temperature.png',
          AppLocalizations.of(context).thermoScanText),
      Category('images/ic_payroll.png',
          AppLocalizations.of(context).payrollText),
      Category('images/ic_blog.png',
          AppLocalizations.of(context).coursesText),
      Category('images/ic_blood.png',
          AppLocalizations.of(context).benefitText),
      Category('images/ic_announcement.png',
          AppLocalizations.of(context).announcementText),
      Category('images/ic_shareapp.png',
          AppLocalizations.of(context).filetText),
    ];
    var appLocalization = AppLocalizations.of(context);
    String value = "New York, USA";
    return Scaffold(
      // appBar: AppBar(
      //   leading: Padding(
      //     padding: EdgeInsets.only(left: 20.0),
      //     child: Icon(Icons.location_on, color: kMainColor),
      //   ),
      //   title: Container(
      //     child: Row(
      //       children: [
      //         Text(
      //           value,
      //           style: Theme.of(context)
      //               .textTheme
      //               .bodyText2
      //               .copyWith(fontSize: 15, color: Colors.grey[500]),
      //         ),
      //         IconButton(
      //           onPressed: () {
      //             Navigator.pushNamed(context, PageRoutes.locationPage);
      //           },
      //           icon: Icon(Icons.keyboard_arrow_down, color: Colors.grey[500]),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
      body: FutureBuilder<EmployeeInformationDto>(
        future: futureEmployee,
        builder: (context, snapshoot){
          if(snapshoot.hasData){
            return ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                left: 5,
                bottom: 5,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "images/logo_header.png",
                        scale: 4,
                        width: 100,
                        height: 100, //delivoo logo
                      ),
                      // Text(AppLocalizations.of(context).nameEmployeeText,
                      //     style: Theme.of(context)
                      //         .textTheme
                      //         .caption
                      //         .copyWith(color: kLightTextColor, fontSize: 15.0)),
                    ],
                  ),
                  // Spacer(),
                  //_buildTop(),
                  //BookingRow(),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: SafeArea(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              snapshoot.data.fullName,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption
                                                  .copyWith(
                                                      color: kLightTextColor,
                                                      fontSize: 15.0)),
                                                       Text(
                                              snapshoot.data.departmentName,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption
                                                  .copyWith(
                                                      color: kLightTextColor,
                                                      fontSize: 15.0)),
                                                       Text(
                                              snapshoot.data.employeeNumber,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption
                                                  .copyWith(
                                                      color: kLightTextColor,
                                                      fontSize: 15.0)),
                                          Text(
                                              snapshoot.data.jobPositionName,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption
                                                  .copyWith(
                                                      color: kLightTextColor,
                                                      fontSize: 15.0)),
                                          // Text(
                                          //     AppLocalizations.of(context)
                                          //         .jobEmployeeText,
                                          //     style: Theme.of(context)
                                          //         .textTheme
                                          //         .caption
                                          //         .copyWith(
                                          //             color: kLightTextColor,
                                          //             fontSize: 15.0)),
                                        ]),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: 100.0,
                              height: 100.0,
                              child: GestureDetector(
                                onTap: () {
                                  Fluttertoast.showToast(
                                      msg: 'Click profile picture',
                                      toastLength: Toast.LENGTH_SHORT);
                                },
                                child: Hero(
                                  tag: 'profilePicture',
                                  child: ClipOval(
                                    child: Image.asset(
                                      "images/user.png",
                                      width: 40,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // SizedBox(
                          //   width: 20,
                          // ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //margin: EdgeInsets.only(left: 10),

            Padding(
              padding: EdgeInsets.all(5),
              child: Container(
                margin: EdgeInsets.only(right: 130),
                child: RaisedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("images/alarm.png", scale: 4),
                      SizedBox(width: 8),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 12.0,
                        ),
                        child: Text(
                          AppLocalizations.of(context).clockinText,
                          style: Theme.of(context).textTheme.button,
                        ),
                      ),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  onPressed: () {
                    Navigator.pushNamed(context, LoginRoutes.login);
                  },
                ),
              ),
              // BottonBarClock(
              //     text: AppLocalizations.of(context).clockinText,
              //     onTap: () {
              //       Navigator.pushNamed(context, LoginRoutes.homeMenu);
              //     }),
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

            // Padding(
            //   padding: EdgeInsets.only(left: 20, bottom: 15, top: 20),
            //   child: Row(
            //     children: [
            //       Text(
            //         AppLocalizations.of(context).homeHureText1,
            //         style: Theme.of(context).textTheme.bodyText1,
            //       ),
            //       Spacer(),
            //     ],
            //   ),
            // ),

            Padding(
              padding: EdgeInsets.all(5),

              // margin: EdgeInsets.symmetric(vertical: 5),
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
                          "images/ic_overtime.png",
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
                          "images/ic_directory.png",
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
                    child: GestureDetector(
                      onTap: ()  => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ItemsAttendance("Tes"),
                        )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "images/ic_nearby.png",
                            width: 70,
                            height: 70,
                          ),
                          Text(AppLocalizations.of(context).attendanceText,
                              style: Theme.of(context).textTheme.caption.copyWith(
                                  color: kLightTextColor, fontSize: 15.0)),
                        ],
                      ),
                    ),
                    color: Theme.of(context).cardColor,
                  ),
                  Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "images/ic_temperature.png",
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
                          "images/ic_payroll.png",
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
                          "images/ic_blog.png",
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
                          "images/ic_blood.png",
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
                          "images/ic_announcement.png",
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
                          "images/ic_shareapp.png",
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

            Padding(
              padding: EdgeInsets.all(5.0),
              // child: Row(
              //   children: [
              //     Spacer(),
              //   ],
              // ),
            ),
            Container(
              //height: 136,
              height: MediaQuery.of(context).copyWith().size.width / 3,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: banner.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Image.asset(banner[index]),
                    );
                  }),
            ),
          ],
        );
          }else if(snapshoot.hasError){
             var snapshot;
              return Text("${snapshot.error}");

          }
           return Center(child: CircularProgressIndicator());
            
        }
               
      ),
    );
  }
}

//   Widget _buildTop() {
//     return Container(
//       padding: EdgeInsets.all(5),
//       child: Row(
//         children: [
//           GestureDetector(
//             onTap: () {
//               Fluttertoast.showToast(
//                   msg: 'Click profile picture',
//                   toastLength: Toast.LENGTH_SHORT);
//             },
//             child: Hero(
//               tag: 'profilePicture',
//               child: ClipOval(
//                 child: Image.asset(
//                   "assets/images/user.png",
//                   width: 50,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// Widget quickGrid(BuildContext context, String image) {
//   return GestureDetector(
//     onTap: () {
//       Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => ItemsPage(AppLocalizations.of(context).store),
//           ));
//     },
//     child: Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Image(
//           image: AssetImage(image),
//           height: 62.5,
//         ),
//         SizedBox(width: 8.0),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(AppLocalizations.of(context).nameEmployeeText,
//                 style: Theme.of(context)
//                     .textTheme
//                     .caption
//                     .copyWith(color: kLightTextColor, fontSize: 10.0)),
//             SizedBox(height: 8.0),
//             Row(
//               mainAxisSize: MainAxisSize.min,
//               children: <Widget>[
//                 Text(AppLocalizations.of(context).jobEmployeeText,
//                     style: Theme.of(context)
//                         .textTheme
//                         .caption
//                         .copyWith(color: kLightTextColor, fontSize: 10.0)),
//               ],
//             ),
//           ],
//         ),
//       ],
//     ),
//   );
// }
