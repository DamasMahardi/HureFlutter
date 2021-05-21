import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:uihure/Auth/Tenant/UI/tenant.dart';
import 'package:uihure/Auth/login_navigator.dart';

import 'package:uihure/Components/list_tile.dart';

import 'package:uihure/Components/textfield.dart';
import 'package:uihure/HomeHure/Account/UI/account_page.dart';

import 'package:uihure/Themes/colors.dart';
import 'package:uihure/Locale/locales.dart';
import 'package:uihure/model/tenant/tenant_response.dart';
import 'package:uihure/network/Apiservice.dart';
import 'package:uihure/network/endpoint.dart';
import 'package:uihure/service/SharedPreferences.dart';
import 'package:uihure/service/identity/identity_service.dart';
import 'package:uihure/utils/utils.dart';

//register page for registration of a new user
final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

class LoginPage extends StatelessWidget {
  LoginPage({Key key}) : super(key: key);
 
  final _scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldState,
        //this column contains 3 textFields and a bottom bar
        body: SingleChildScrollView(
          child: LoginForm(),
        ));
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController(text: "damas@idooh.co.id");
  final TextEditingController _passwordController = TextEditingController(text: "pass1234");
  final TextEditingController _tenantController = TextEditingController(text: "idooh");
  final _formKey = GlobalKey<FormState>();
  Endpoint service = Endpoint();

  // RegisterBloc _registerBloc;

  bool isLoading = false;
  // Shareprefences shareprefences = Shareprefences();
  Endpoint http = Endpoint();
  TenantResponse tenantResponse = TenantResponse();
  IdentityService identityService = IdentityService();

  @override
  void initState() {
    verifyPhoneNumber();
    super.initState();
    // _registerBloc = BlocProvider.of<RegisterBloc>(context);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _timer.cancel();

    http = Endpoint();
    _timer.cancel();
    super.dispose();
  }

  bool isPassword = false;
  bool isEmail = false;
  bool isDialogShowing = false;
  int _counter = 20;
  Timer _timer;

  _startTimer() {
    //shows timer
    _counter = 20; //time counter

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _counter > 0 ? _counter-- : _timer.cancel();
      });
    });
  }

  void verifyPhoneNumber() {
    //verify phone number method using otp
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            //color: Theme.of(context).cardColor,
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Image.asset(
                  "assets/images/logo.png",
                  scale: 4,
                  width: 200,
                  height: 200, //delivoo logo
                ),
                SizedBox(
                  height: 25,
                ),

                Text(
                  AppLocalizations.of(context).signText,
                  style: Theme.of(context).textTheme.headline6.copyWith(
                      fontSize: 22,
                      color: Theme.of(context).secondaryHeaderColor),
                ),

                SizedBox(
                  height: 50,
                ),

                // inputField(
                //   //controller: _emailController,
                //   AppLocalizations.of(context).userNameText.toUpperCase(),

                //   'samanthasmith@mail.com',
                //   'images/icons/ic_name.png',
                // ),
                // inputField(
                //     AppLocalizations.of(context).passwordText.toUpperCase(),
                //     'Samantha Smith',
                //     'images/icons/password.png'),
                //
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _tenantController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(hintText: "Tenant"),
                      ),
                      TextFormField(
                          controller: _emailController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(hintText: "Username"),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Entry Email Address';
                            }
                            if (isEmail &&
                                _emailController.text != 'admin' &&
                                !Utils.validateEmail(value)) {
                              return 'Invalid email format';
                            }
                            return null;
                          }),
                      SizedBox(
                        height: 2,
                      ),
                      TextFormField(
                        controller: _passwordController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(hintText: "Password"),
                      ),
                    ],
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FlatButton(
                        shape: RoundedRectangleBorder(side: BorderSide.none),
                        padding: EdgeInsets.all(24.0),
                        disabledTextColor: kDisabledColor,
                        textColor: kMainColor,
                        child: Text(
                          AppLocalizations.of(context).forgotPasswordText,
                          style: TextStyle(
                            fontSize: 16.7,
                            color: Colors.lightGreen,
                          ),
                        ),
                        onPressed: () {
                          showDialog(
                              context: context,
                              //barrierDismissible: false,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(AppLocalizations.of(context)
                                      .loginforgotTextPasswordText),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      inputField(
                                        AppLocalizations.of(context)
                                            .loginforgotPasswordText,
                                        'Enter Mail Address',
                                        'images/icons/ic_mail.png',
                                      ),
                                    ],
                                  ),
                                  actions: <Widget>[
                                    FlatButton(
                                      child: Text(AppLocalizations.of(context)
                                          .cancelPasswordText),
                                      textColor: kMainColor,
                                      shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                              color: kTransparentColor)),
                                      onPressed: () => Navigator.pop(context),
                                    ),
                                    FlatButton(
                                        child: Text(AppLocalizations.of(context)
                                            .submitForgotPasswordText),
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                color: kTransparentColor)),
                                        textColor: kMainColor,
                                        onPressed: () {
                                          Phoenix.rebirth(context);
                                        })
                                  ],
                                );
                              });
                        }),
                  ],
                ),
                //name textField
                //email textField

                //phone textField
                // inputField(
                //   AppLocalizations.of(context).mobileNumber.toUpperCase(),
                //   '+1 987 654 3210',
                //   'images/icons/ic_phone.png',
                // ),

                // Padding(
                //   padding: const EdgeInsets.only(left: 16.0),
                //   child: Text(
                //     AppLocalizations.of(context).verificationText,
                //     style: Theme.of(context)
                //         .textTheme
                //         .headline6
                //         .copyWith(fontSize: 12.8),
                //   ),
                // ),
                Container(
                  // margin: EdgeInsets.all(5),
                  height: 40,

                  child: RaisedButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppLocalizations.of(context).hurelogin,
                            style: Theme.of(context).textTheme.button,
                          ),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      onPressed: () async {
                        if (_formKey.currentState.validate()) {
                          String response;
                          try {
                           response = await identityService.connect(
                             
                              _emailController.text,
                              _passwordController.text,
                              _tenantController.text,
                            );
                          } finally {
                            if (response != null) {
                              Navigator.pushNamed(context, LoginRoutes.homeMenu);
                            } else {
                              Scaffold.of(context).showSnackBar(SnackBar(
                                content: Text("Login failed"),
                              ));
                            }
                          }
                        }
                      }),
                ),
              ],
            ),
          ),
        ),

        //continue button bar
        // Align(
        //   alignment: Alignment.bottomCenter,
        //   child: BottomBar(
        //       text: AppLocalizations.of(context).login,
        //       onTap: () {
        //         Navigator.pushNamed(context, LoginRoutes.homeMenu);
        //       }),
        // )
      ],
    );
  }

  Container inputField(String title, String hint, String img) {
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
                  style: TextStyle(color: Colors.grey[600], fontSize: 12))
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 33),
            child: Column(
              children: [
                smallTextFormField(null, hint),
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
}

class ForgetPasswordTile extends StatelessWidget {
  TextEditingController _controllerconfimPasswordText;

  @override
  Widget build(BuildContext context) {
    return BuildListTile(
      small: true,
      image: 'images/account/ic_key.png',
      text: AppLocalizations.of(context).accountlogoutText,
      onTap: () {
        showDialog(
            context: context,
            //barrierDismissible: false,
            builder: (BuildContext context) {
              return AlertDialog(
                title:
                    Text(AppLocalizations.of(context).loginforgotPasswordText),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    inputField(
                      AppLocalizations.of(context).confimPasswordText,
                      'Enter Mail Address',
                      'images/icons/ic_mail.png',
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
