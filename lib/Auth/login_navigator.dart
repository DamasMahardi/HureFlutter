import 'package:flutter/material.dart';
import 'package:uihure/Auth/MobileNumber/UI/phone_number.dart';
import 'package:uihure/Auth/Registration/UI/register_page.dart';
import 'package:uihure/Auth/Tenant/UI/tenant.dart';
import 'package:uihure/Auth/Verification/UI/verification_page.dart';
import 'package:uihure/Auth/login/UI/login_page.dart';
import 'package:uihure/Auth/social.dart';
import 'package:uihure/HomeHure/home_hure_account.dart';
import 'package:uihure/HomeOrderAccount/home_order_account.dart';
import 'package:uihure/Routes/routes.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class LoginRoutes {
  static const String signInRoot = 'tenant';
  static const String login = 'login_page';
  static const String verification = 'login/verification';
  static const String homeMenu = 'home_hure_account';
  static const String socialLogin = 'login/social_login';
}

class LoginNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        var canPop = navigatorKey.currentState.canPop();
        if (canPop) {
          navigatorKey.currentState.pop();
        }
        return !canPop;
      },
      child: Navigator(
        key: navigatorKey,
        initialRoute: LoginRoutes.signInRoot,
        onGenerateRoute: (RouteSettings settings) {
          WidgetBuilder builder;
          switch (settings.name) {
            case LoginRoutes.signInRoot:
              builder = (BuildContext _) => LoginPage();
             // Navigator.popAndPushNamed(context, PageRoutes.tenant);
              break;
            case LoginRoutes.login:
              builder = (BuildContext _) => LoginPage();
              Navigator.popAndPushNamed(context, PageRoutes.loginmenu);
              break;
            case LoginRoutes.homeMenu:
              builder = (BuildContext _) => HomeAccontHure();
              Navigator.popAndPushNamed(
                  context, PageRoutes.homehureAccountPage);
              break;
            case LoginRoutes.verification:
              builder = (BuildContext _) => VerificationPage(() {
                    Navigator.popAndPushNamed(
                        context, PageRoutes.homeOrderAccountPage);
                  });
              break;
            case LoginRoutes.socialLogin:
              builder = (BuildContext _) => SocialLogIn();
              break;
          }
          return MaterialPageRoute(builder: builder, settings: settings);
        },
        onPopPage: (Route<dynamic> route, dynamic result) {
          return route.didPop(result);
        },
      ),
    );
  }
}
