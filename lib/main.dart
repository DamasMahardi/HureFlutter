import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:uihure/Auth/login_navigator.dart';
import 'package:uihure/Locale/locales.dart';
import 'package:uihure/Routes/routes.dart';
import 'package:uihure/language_cubit.dart';
import 'package:uihure/theme_cubit.dart';
import 'package:uihure/localization/app_translations_delegate.dart';
import 'package:uihure/localization/application.dart';

import 'Auth/Tenant/UI/tenant.dart';
import 'Enviroment/enviroment.prod.dart';

// Future<Null> main() async {
//   runApp(new MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   MyAppState createState() {
//     return new MyAppState();
//   }
// }

// class MyAppState extends State<MyApp> {
//   AppTranslationsDelegate _newLocaleDelegate;

//   @override
//   void initState() {
//     super.initState();
//     _newLocaleDelegate = AppTranslationsDelegate(newLocale: null);
//     application.onLocaleChanged = onLocaleChange;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: LoginNavigator(),
//       localizationsDelegates: [
//         _newLocaleDelegate,
//         //provides localised strings
//         GlobalMaterialLocalizations.delegate,
//         //provides RTL support
//         GlobalWidgetsLocalizations.delegate,
//       ],
//       supportedLocales: [
//         const Locale("en", ""),
//         const Locale("es", ""),
//       ],
//     );
//   }

//   void onLocaleChange(Locale locale) {
//     setState(() {
//       _newLocaleDelegate = AppTranslationsDelegate(newLocale: locale);
//     });
//   }
// }

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(Phoenix(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LanguageCubit>(
          create: (context) => LanguageCubit(),
        ),
          BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (_, theme) {
          return BlocBuilder<LanguageCubit, Locale>(
            builder: (_, locale) {
              return MaterialApp(
                localizationsDelegates: [
                  const AppLocalizationsDelegate(),
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                ],
                supportedLocales: [
                  const Locale('en'),
                  const Locale('id'),
                  // const Locale('fr'),
                  // const Locale('ar'),
                  // const Locale('pt'),
                  // const Locale('es'),
                ],
                debugShowCheckedModeBanner: true,
                locale: locale,
                theme: theme,
                home: LoginNavigator(),
                routes: PageRoutes().routes(),
              );
            },
          );
        },
      ),
    );
  }
}
