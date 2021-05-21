import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:uihure/Auth/login/UI/login_page.dart';
import 'package:uihure/Auth/login_navigator.dart';
import 'package:uihure/Components/list_tile.dart';
import 'package:uihure/Components/textfield.dart';
import 'package:uihure/HomeHure/Account/UI/ListItems/about_company.dart';
import 'package:uihure/HomeHure/Account/UI/ListItems/personalinformation.dart';
import 'package:uihure/HomeHure/Account/UI/ListItems/settings_page.dart';
import 'package:uihure/Locale/locales.dart';
import 'package:uihure/Routes/routes.dart';
import 'package:uihure/Themes/colors.dart';
import 'package:uihure/localization/app_translations.dart';
import 'package:uihure/model/employee/EmployeeInformationDto.dart';
import 'package:uihure/network/dio_common.dart';
import 'package:uihure/service/SharedPreferences.dart';
import 'package:uihure/service/identity/identity_service.dart';

import '../../../language_cubit.dart';
import '../../../theme_cubit.dart';
import 'ListItems/saved_addresses_page.dart';
import 'package:uihure/localization/app_translations_delegate.dart';
import 'package:uihure/localization/application.dart';
import 'package:uihure/localization/app_translations_delegate.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:ui';


class LanguageList {
  final String title;
  EmployeeInformationDto employeeInformationDto = EmployeeInformationDto();

  LanguageList({this.title});
}

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Account(),
    );
  }
}

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  static final List<String> languagesList = application.supportedLanguages;
  static final List<String> languageCodesList =
      application.supportedLanguagesCodes;

  final Map<dynamic, dynamic> languagesMap = {
    languagesList[0]: languageCodesList[0],
    languagesList[1]: languageCodesList[1],
  };

  String label = languagesList[0];

  final scaffoldKey = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();
  final popkey = new GlobalKey<State>();

  final GlobalKey _menuKey = new GlobalKey();
  bool sliderValue = false;
  LanguageCubit _languageCubit;
  ThemeCubit _themeCubit;
  String selectedLocal;
  String number;
 // IdentityService identityService = IdentityService();
  SharedPrefs sharedPrefs = SharedPrefs();
  //EmployeeInformationDto employeeInformationDto;
  Future<EmployeeInformationDto> futureEmployee;

  EmployeeInformationDto employeeInformationDto = EmployeeInformationDto();

  IdentityService identityService = IdentityService();

  @override
  void initState() {
    super.initState();
    _languageCubit = BlocProvider.of<LanguageCubit>(context);
    _themeCubit = BlocProvider.of<ThemeCubit>(context);
    application.onLocaleChanged = onLocaleChange;
    futureEmployee= identityService.getEmployeeId();

    onLocaleChange(Locale(languagesMap["Hindi"]));
  }

  void onLocaleChange(Locale locale) async {
    setState(() {
      AppTranslations.load(locale);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _select(String language) {
    print("dd " + language);
    onLocaleChange(Locale(languagesMap[language]));
    setState(() {
      if (language == "Hindi") {
        label = "हिंदी";
      } else {
        label = language;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);

    final List<String> language = [
      locale.englishh,
      locale.indonesiann,
    ];
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
        title: new Text(label, style: new TextStyle(color: Colors.white)),
        // Text(AppLocalizations.of(context).myaccountText,
        //     style: Theme.of(context).textTheme.bodyText1),
        actions: [
          PopupMenuButton<String>(
            // overflow menu
            onSelected: _select,
            icon: new Icon(Icons.language, color: Colors.white),
            itemBuilder: (BuildContext context) {
              return languagesList.map<PopupMenuItem<String>>((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
          // GestureDetector(
          //     onTap: () {
          //       Fluttertoast.showToast(
          //           msg: 'Click message', toastLength: Toast.LENGTH_SHORT);
          //     },
          //     child: Row(
          //       children: [
          //         Icon(Icons.language, color: kMainColor),
          //        Switch(
          //          key: scaffoldKey,
          //           value: sliderValue,
          //           onChanged: (value) {
          //             setState(

          //               () {
          //                 sliderValue = value;

          //                 if (sliderValue == true) {
          //                    _languageCubit.selectIndonesianLanguage();

          //                 } else if (sliderValue == false) {
          //                   _languageCubit.selectEngLanguage();
          //                 }

          //               },
          //             );
          //           },
          //         ),
          //       ],
          //     )),
          // PopupMenuButton(
          //   child: Padding(
          //     padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          //     child: Text("Language"),
          //   ),
          //   itemBuilder: (context) => [
          //     PopupMenuItem(
          //       value: 1,
          //       key: _menuKey,

          //       //key: popkey,
          //       child: Container(
          //         child: InkWell(
          //           child: Text("English"),
          //           onTap: () {
          //             _languageCubit.selectEngLanguage();
          //              Navigator.pop(context);
          //           },
          //         ),
          //       ),
          //       // Text(
          //       //   locale.englishh,
          //       //   style: Theme.of(context).textTheme.headline6.copyWith(
          //       //       fontSize: 18.3,
          //       //       color: Theme.of(context).secondaryHeaderColor,
          //       //       fontWeight: FontWeight.bold),
          //       // ),
          //     ),
          //     PopupMenuItem(
          //       value: 2,
          //       key: popkey,
          //       //key: popkey,
          //       child: Container(child: InkWell(child: Text("Indonesia"),
          //       onTap: (){
          //             _languageCubit.selectIndonesianLanguage();
          //              Navigator.pop(context);

          //       },
          //       )),
          //       // Text(
          //       //   locale.indonesiann,
          //       //   style: Theme.of(context).textTheme.headline6.copyWith(
          //       //       fontSize: 18.3,
          //       //       color: Theme.of(context).secondaryHeaderColor,
          //       //       fontWeight: FontWeight.bold),
          //       // ),
          //     ),
          //   ],

          //   key: _menuKey,
          //   initialValue: 1,
          //   // onSelected: (selectedLocale) {
          //   //   if (selectedLocale == 1) {
          //   //     //selectedLocal = locale.englishh;
          //   //     _languageCubit.selectEngLanguage();
          //   //   } else if (selectedLocale == 2) {
          //   //     //selectedLocal = locale.indonesiann;
          //   //     _languageCubit.selectIndonesianLanguage();
          //   //   }
          //   //   setState(() {
          //   //     _languageCubit = selectedLocale;
          //   //   });
          //   //   Navigator.pop(context);
          //   // },
          //   captureInheritedThemes: false,
          //   //  if (selectedLocal == locale.englishh) {
          //   //     _languageCubit.selectEngLanguage();
          //   //    {
          //   //     _languageCubit.selectIndonesianLanguage();
          //   //   }
          //   //  }
          // ),
        ],
        bottom: PreferredSize(
            child: Container(
              color: Colors.grey[100],
              height: 1.0,
            ),
            preferredSize: Size.fromHeight(1.0)),
      ),
      key: scaffoldKey,
      body: FutureBuilder<EmployeeInformationDto>(
        future: futureEmployee,
        builder: (context, snapshoot){

          if(snapshoot.hasData){
            return ListView(
          children: <Widget>[
            Padding(
      padding: EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 48.0),
            color: Theme.of(context).cardColor,
            //padding: EdgeInsets.all(20),
            child: FutureBuilder<EmployeeInformationDto>(
              future: futureEmployee,
              builder: (context, snapshoot){
                if(snapshoot.hasData){
                  return  Column(
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
                          "images/user.png",
                          width: 100.0,
                          height: 100.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(snapshoot.data.fullName,
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    .copyWith(
                                        color: kLightTextColor, fontSize: 15.0)),
                            SizedBox(
                              height: 10,
                            ),
                            Text(snapshoot.data.jobTitleName,
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    .copyWith(
                                        color: kLightTextColor, fontSize: 15.0)),
                          ]),
                    ],
                  ),
                ],
              );
                }else if(snapshoot.hasError){
                   var snapshot;
              return Text("${snapshot.error}");
                }
                 return CircularProgressIndicator();

              },
                          
            ),
          ),
        ],
      ),
    ),

            SizedBox(
              height: 10,
            ),

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    snapshoot.data.companyName,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context).accountContactText,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: kMainColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(snapshoot.data.companyEmail,
                          style: Theme.of(context)
                              .textTheme
                              .caption
                              .copyWith(color: kLightTextColor, fontSize: 15.0)),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: kMainColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(snapshoot.data.companyPhone,
                          style: Theme.of(context)
                              .textTheme
                              .caption
                              .copyWith(color: kLightTextColor, fontSize: 15.0)),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.language,
                        color: kMainColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(snapshoot.data.companyWebsite,
                          style: Theme.of(context)
                              .textTheme
                              .caption
                              .copyWith(color: kLightTextColor, fontSize: 15.0)),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    AppLocalizations.of(context).accouAddressText,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(snapshoot.data.companyAddress,
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(color: kLightTextColor, fontSize: 15.0)),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(15),
                  height: 40,
                  child: RaisedButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppLocalizations.of(context)
                                .accountpersonalInfomationtext,
                            style: Theme.of(context).textTheme.button,
                          ),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      onPressed: () async {
                        try {
                         var response= await  identityService.getEmployeeId();

                       if (response != null) {
Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => PersonalInformationPage()),
  );
                          }
                        } catch (e) {
                          print(e);
                        }
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  height: 40,
                  child: RaisedButton(
                    color: dangerColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppLocalizations.of(context).signoutText,
                          style: Theme.of(context).textTheme.button,
                        ),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    onPressed: () {
                      showDialog(
                          context: context,

                          //barrierDismissible: false,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title:
                                  Text(AppLocalizations.of(context).logoutText),
                              actions: <Widget>[
                                FlatButton(
                                  child: Text(AppLocalizations.of(context)
                                      .cancelLogoutText),
                                  textColor: kMainColor,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(color: kTransparentColor)),
                                  onPressed: () => Navigator.pop(context),
                                ),
                                FlatButton(
                                    child: Text(AppLocalizations.of(context)
                                        .yesLogoutText),
                                    shape: RoundedRectangleBorder(
                                        side:
                                            BorderSide(color: kTransparentColor)),
                                    textColor: kMainColor,
                                    onPressed: () async {
                                      try {
                                        await identityService.logOut();
                                        await DioCommon.cacheManager.clearAll();
                                        sharedPrefs.removeToken("access_token");
                                        sharedPrefs.removeTenant("tenantId");
                                        Navigator.pushNamed(
                                            context, LoginRoutes.login);
                                      } catch (e) {
                                        print(e);
                                      }
                                    })
                              ],
                            );
                          });
                    },
                  ),
                ),
              ],
            ),

            // BuildListTile(
            //   small: true,
            //   image: 'images/account/personal-information.png',
            //   text: AppLocalizations.of(context).accountpersonalInfomationtext,
            //   onTap: () => Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => PersonalInformationPage(),
            //       )),
            // ),

            // // ListTile(
            // //   contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 20.0),
            // //   leading: Image.asset(
            // //     "images/account/personal-information.png",
            // //     height: 20,
            // //   ),
            // //   title: Text(
            // //     AppLocalizations.of(context).accountpersonalInfomationtext,
            // //     style: Theme.of(context).textTheme.headline4.copyWith(
            // //         fontWeight: FontWeight.bold, letterSpacing: 0.07, fontSize: 17),
            // //   ),
            // //   onTap: () =>
            // //       Navigator.push(
            // //           context,
            // //           MaterialPageRoute(
            // //             builder: (context) => PersonalInformationPage(),
            // //           )),
            // // ),
            // BuildListTile(
            //   small: true,
            //   image: 'images/account/ic_menu_supportact.png',
            //   text: AppLocalizations.of(context).accountContactText,
            //   onTap: () => Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => AboutCompany(),
            //       )),
            // ),
            // BuildListTile(
            //   small: true,
            //   image: 'images/account/ic_menu_setting.png',
            //   text: AppLocalizations.of(context).accountSettingText,
            //   onTap: () => Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => Settings(),
            //       )),
            // ),

            // //  BuildListTile(
            // //   small: true,
            // //   image: 'images/account/ic_key.png',
            // //   text: AppLocalizations.of(context).accountChangepasswordtText,
            // //   onTap: () => Navigator.push(
            // //           context,
            // //           MaterialPageRoute(
            // //             builder: (context) => Settings(),
            // //           )),
            // // ),
            // ChangePasswordTile(),
            // LogoutTile(),
          ],
        );
          }else if(snapshoot.hasError){
             var snapshot;
              return Text("${snapshot.error}");
          }
          return Center(child: CircularProgressIndicator());
        },

            
      ),
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

class ChangePasswordTile extends StatelessWidget {
  TextEditingController _controllerconfimPasswordText;

  TextEditingController _controllercurrentPasswordText;

  TextEditingController _controllernewPasswordText;

  @override
  Widget build(BuildContext context) {
    return BuildListTile(
      small: true,
      image: 'images/account/ic_key.png',
      text: AppLocalizations.of(context).accountChangepasswordtText,
      onTap: () {
        showDialog(
            context: context,
            //barrierDismissible: false,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(AppLocalizations.of(context).changePasswordText),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    inputField(
                      AppLocalizations.of(context).currentPasswordText,
                      'Current Password',
                      'images/icons/password.png',
                      _controllercurrentPasswordText,
                    ),
                    inputField(
                      AppLocalizations.of(context).newPasswordText,
                      'New Password',
                      'images/icons/password.png',
                      _controllernewPasswordText,
                    ),
                    inputField(
                      AppLocalizations.of(context).confimPasswordText,
                      'Confirm new password',
                      'images/icons/password.png',
                      _controllerconfimPasswordText,
                    ),
                  ],
                ),
                actions: <Widget>[
                  FlatButton(
                    child:
                        Text(AppLocalizations.of(context).cancelPasswordText),
                    textColor: kMainColor,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: kTransparentColor)),
                    onPressed: () => Navigator.pop(context),
                  ),
                  FlatButton(
                      child:
                          Text(AppLocalizations.of(context).savePasswordText),
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

Container inputField(
    String title, String hint, String img, TextEditingController controller) {
  return Container(
    child: Column(
      children: [
        Row(
          children: [
            Container(
              height: 20,
              child: Image(
                image: AssetImage(
                  img,
                ),
                color: kMainColor,
              ),
            ),
            SizedBox(
              width: 13,
            ),
            Text(title,
                style: TextStyle(color: Colors.grey[600], fontSize: 12)),
          ],
        ),
        Container(
          padding: EdgeInsets.only(left: 33),
          child: Column(
            children: [
              passwordTextFormField(null, hint, controller),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

// class UserDetails extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(5.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: <Widget>[
//           Container(
//             padding: EdgeInsets.symmetric(vertical: 48.0),
//             color: Theme.of(context).cardColor,
//             //padding: EdgeInsets.all(20),
//             child: FutureBuilder<EmployeeInformationDto>(
//               future: futureEmployee,
//               builder: (context, snapshoot){
//                 if(snapshoot.hasData){
//                   return  Column(
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       Fluttertoast.showToast(
//                           msg: 'Click profile picture',
//                           toastLength: Toast.LENGTH_SHORT);
//                     },
//                     child: Hero(
//                       tag: 'profilePicture',
//                       child: ClipOval(
//                         child: Image.asset(
//                           "assets/images/user.png",
//                           width: 100.0,
//                           height: 100.0,
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Column(
//                     children: [
//                       Column(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             SizedBox(
//                               height: 10,
//                             ),
//                             Text(snapshoot.data.fullName,
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .caption
//                                     .copyWith(
//                                         color: kLightTextColor, fontSize: 15.0)),
//                             SizedBox(
//                               height: 10,
//                             ),
//                             Text(snapshoot.data.jobTitleName,
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .caption
//                                     .copyWith(
//                                         color: kLightTextColor, fontSize: 15.0)),
//                           ]),
//                     ],
//                   ),
//                 ],
//               );
//                 }else if(snapshoot.hasError){
//                    var snapshot;
//               return Text("${snapshot.error}");
//                 }
//                  return CircularProgressIndicator();

//               },
                          
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
