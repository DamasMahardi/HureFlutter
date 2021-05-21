import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:uihure/Auth/login_navigator.dart';
import 'package:uihure/Components/bottom_bar.dart';

import 'package:uihure/Components/textfield.dart';
import 'package:uihure/Themes/colors.dart';
import 'package:uihure/Locale/locales.dart';

//register page for registration of a new user
class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        title: Text(
          AppLocalizations.of(context).login,
          style: Theme.of(context).textTheme.caption.copyWith(fontSize: 20),
        ),
      ),

      //this column contains 3 textFields and a bottom bar
      body: RegisterForm(),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _controller = TextEditingController();

  // RegisterBloc _registerBloc;

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
    _controller.dispose();
    _timer.cancel();
    _controller.dispose();
    _timer.cancel();
    super.dispose();
  }

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
          child: Column(
            children: <Widget>[
              Divider(
                color: Theme.of(context).cardColor,
                thickness: 8.0,
              ),
              SizedBox(
                height: 25,
              ),
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
                height: 25,
              ),
              Text(
                AppLocalizations.of(context).signTenantText,
                style: Theme.of(context).textTheme.headline6.copyWith(
                    fontSize: 22,
                    color: Theme.of(context).secondaryHeaderColor),
              ),
              SizedBox(
                height: 50,
              ),

              inputField(
                //controller: _emailController,
                AppLocalizations.of(context).userNameText.toUpperCase(),

                'samanthasmith@mail.com',
                'images/icons/ic_name.png',
              ),
              inputField(
                  AppLocalizations.of(context).passwordText.toUpperCase(),
                  'Samantha Smith',
                  'images/icons/password.png'),
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
                      onPressed: _counter < 1
                          ? () {
                              verifyPhoneNumber();
                            }
                          : null),
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
            ],
          ),
        ),

        //continue button bar
        Align(
          alignment: Alignment.bottomCenter,
          child: BottomBar(
              text: AppLocalizations.of(context).login,
              onTap: () {
                Navigator.pushNamed(context, LoginRoutes.homeMenu);
              }),
        )
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
