// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:uihure/Auth/login_navigator.dart';
// import 'package:uihure/app_dialogs.dart';
// import 'package:uihure/app_theme.dart';
// import 'package:uihure/service/SharedPreferences.dart';
// import 'package:uihure/utils/utils.dart';

// import 'package:uihure/service/identity/identity_service.dart';

// class LoginScreen extends StatelessWidget {
//   final service = IdentityService();
//   final emailControl = TextEditingController();
//   final passwordControl = TextEditingController(text: 'wargakoo');

//   final _tred = TextStyle(fontSize: 14.0, color: AppTheme.orange);
//   final _tblack = TextStyle(fontSize: 16, color: Colors.grey[800]);
//   final _formKey = GlobalKey<FormState>();
//   final _scaffoldKey = GlobalKey<ScaffoldState>();
//   final _stateKey = GlobalKey<State>();

//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;

//     return Scaffold(
//         key: _scaffoldKey,
//         body: Container(
//           height: height,
//           color: AppTheme.white,
//           child: Stack(
//             children: [
//               Container(
//                 padding: EdgeInsets.symmetric(horizontal: 20),
//                 child: SingleChildScrollView(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       SizedBox(height: height * .25),
//                       _logo(),
//                       SizedBox(height: 40),
//                       _entryForm(),
//                       _submitButton(context),
//                       Container(
//                         padding: EdgeInsets.symmetric(vertical: 10),
//                         alignment: Alignment.centerRight,
//                         child: Text('Forgot Password ?',
//                             style: TextStyle(
//                                 fontSize: 18, fontWeight: FontWeight.w500)),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ));
//   }

//   Widget _entryForm() {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 10),
//       child: Form(
//         key: _formKey,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             _field("Email", "Please enter email", emailControl, isEmail: true),
//             SizedBox(height: 5),
//             _field("Password", "Please enter password", passwordControl,
//                 isPassword: true)
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _field(String label, String error, TextEditingController control,
//       {bool isPassword = false, bool isEmail = false}) {
//     return TextFormField(
//         controller: control,
//         style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
//         obscureText: isPassword,
//         decoration: InputDecoration(
//             isDense: true,
//             labelText: label,
//             labelStyle: _tblack,
//             errorStyle: _tred,
//             contentPadding: EdgeInsets.only(left: 10, top: 5, bottom: 5),
//             border: OutlineInputBorder(gapPadding: 2),
//             floatingLabelBehavior: FloatingLabelBehavior.never),
//         validator: (value) {
//           if (value.isEmpty) {
//             return error;
//           }
//           if (isEmail &&
//               control.text != 'admin' &&
//               !Utils.validateEmail(value)) {
//             return 'Invalid email format';
//           }
//           return null;
//         });
//   }

//   Widget _logo() {
//     return Image.asset(
//       'assets/images/logo.png',
//       width: 200,
//       fit: BoxFit.contain,
//     );
//   }

//   Widget _submitButton(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       child: RaisedButton(
//         child: Text('Masuk'),
//         color: Colors.orange[700],
//         textColor: Colors.white,
//         onPressed: () async {
//           _scaffoldKey.currentState.hideCurrentSnackBar();
//           if (_formKey.currentState.validate()) {
//             AppDialogs.showLoading(context, _stateKey);
//             String resp;

//             try {
//               resp = await service.connect(
//                 emailControl.text,
//                 passwordControl.text,
//               );
//             } finally {
//               AppDialogs.hideLoading(_stateKey);
//               if (resp == 'OK') {
//                 SharedPrefs.setIntro(false);
//                 Navigator.pushNamed(context, LoginRoutes.homeMenu);
//               } else {
//                 AppDialogs.showSnackBar(_scaffoldKey, resp);
//               }
//             }
//           }
//         },
//       ),
//     );
//   }
// }
