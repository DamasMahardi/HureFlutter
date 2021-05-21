import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uihure/Components/bottom_bar.dart';
import 'package:uihure/Locale/locales.dart';
import 'package:uihure/Themes/colors.dart';
import 'package:uihure/language_cubit.dart';
import 'package:uihure/theme_cubit.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class ThemeList {
  final String title;
  final String subtitle;

  ThemeList({this.title, this.subtitle});
}

class LanguageList {
  final String title;

  LanguageList({this.title});
}

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool sliderValue = false;
  LanguageCubit _languageCubit;
  ThemeCubit _themeCubit;
  String selectedLocal;
  String selectedTheme;

  @override
  void initState() {
    super.initState();
    _languageCubit = BlocProvider.of<LanguageCubit>(context);
    _themeCubit = BlocProvider.of<ThemeCubit>(context);
  }

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);

    final List<String> language = [
      locale.englishh,
      locale.indonesiann,
    ];
    final List<ThemeList> themes = <ThemeList>[
      ThemeList(
        title: AppLocalizations.of(context).darkMode,
        subtitle: AppLocalizations.of(context).darkText,
      ),
      ThemeList(
        title: AppLocalizations.of(context).lightMode,
        subtitle: AppLocalizations.of(context).lightText,
      ),
    ];
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(AppLocalizations.of(context).accountSettingText,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(fontWeight: FontWeight.bold)),
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
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                height: 57.7,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                //color: kCardBackgroundColor,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppLocalizations.of(context).display,
                    style: Theme.of(context).textTheme.subtitle2.copyWith(
                        color: kTextColor,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.08,
                        fontSize: 17),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.0),
                child: ListTile(
                  title: Text(
                    locale.darkMode,
                    style: Theme.of(context).textTheme.headline6.copyWith(
                        fontSize: 18.3,
                        color: Theme.of(context).secondaryHeaderColor,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    themes[1].subtitle,
                    style: Theme.of(context)
                        .textTheme
                        .caption
                        .copyWith(color: Colors.blueGrey),
                  ),
                  trailing: Switch(
                    value: sliderValue,
                    onChanged: (value) {
                      setState(
                        () {
                          sliderValue = value;

                          if (sliderValue == true) {
                            _themeCubit.selectDarkTheme();
                          } else if (sliderValue == false) {
                            _themeCubit.selectLightTheme();
                          }
                        },
                      );
                    },
                  ),
                ),
              ),
              // RadioButtonGroup(
              //     activeColor: kMainColor,
              //     labelStyle: Theme.of(context).textTheme.caption,
              //     onSelected: (selectedThemes) {
              //       if (selectedThemes == locale.darkMode) {
              //         selectedTheme = locale.darkMode;
              //       } else if (selectedThemes == locale.lightMode) {
              //         selectedTheme = locale.lightMode;
              //       }
              //     },
              //     labels: themes.map((e) => e.title).toList(),
              //     itemBuilder: (Radio radioButton, Text title, int i) {
              //       return Column(
              //         children: <Widget>[
              //           Container(
              //             height: 65.0,
              //             color: Theme.of(context).scaffoldBackgroundColor,
              //             child: Padding(
              //               padding: EdgeInsets.symmetric(horizontal: 8.0),
              //               child: ListTile(
              //                 trailing: radioButton,
              //                 title: Text(
              //                   themes[i].title,
              //                   style: Theme.of(context)
              //                       .textTheme
              //                       .headline6
              //                       .copyWith(
              //                           fontSize: 18.3,
              //                           color: Theme.of(context)
              //                               .secondaryHeaderColor,
              //                           fontWeight: FontWeight.bold),
              //                 ),
              //                 subtitle: Text(
              //                   themes[i].subtitle,
              //                   style: Theme.of(context)
              //                       .textTheme
              //                       .caption
              //                       .copyWith(
              //                           color: Theme.of(context)
              //                               .secondaryHeaderColor),
              //                 ),
              //               ),
              //             ),
              //           ),
              //           SizedBox(height: 5.0)
              //         ],
              //       );
              //     }),
              Container(
                height: 58.0,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppLocalizations.of(context).selectLanguage,
                    style: Theme.of(context).textTheme.subtitle2.copyWith(
                        color: kTextColor,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.08,
                        fontSize: 17),
                  ),
                ),
              ),
              RadioButtonGroup(
                activeColor: kMainColor,
                labelStyle: Theme.of(context).textTheme.caption,
                onSelected: (selectedLocale) {
                  if (selectedLocale == locale.englishh) {
                    selectedLocal = locale.englishh;
                  } else if (selectedLocale == locale.indonesiann) {
                    selectedLocal = locale.indonesiann;
                  }
                },
                labels: language.map((e) => e).toList(),
                itemBuilder: (Radio radioButton, Text title, int i) {
                  return Column(
                    children: <Widget>[
                      Container(
                        height: 56.7,
                        color: Theme.of(context).scaffoldBackgroundColor,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: ListTile(
                            trailing: radioButton,
                            title: Text(
                              language[i],
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(
                                      fontSize: 18.3,
                                      color: Theme.of(context)
                                          .secondaryHeaderColor,
                                      fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5.0)
                    ],
                  );
                },
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomBar(
                text: AppLocalizations.of(context).submit,
                onTap: () {
                  if (selectedLocal == locale.englishh) {
                    _languageCubit.selectEngLanguage();
                  } else if (selectedLocal == locale.arabicc) {
                    _languageCubit.selectArabicLanguage();
                  } else if (selectedLocal == locale.portuguesee) {
                    _languageCubit.selectPortugueseLanguage();
                  } else if (selectedLocal == locale.frenchh) {
                    _languageCubit.selectFrenchLanguage();
                  } else if (selectedLocal == locale.spanishh) {
                    _languageCubit.selectSpanishLanguage();
                  } else if (selectedLocal == locale.indonesiann) {
                    _languageCubit.selectIndonesianLanguage();
                  }

                  Navigator.pop(context);
                }),
          ),
        ],
      ),
    );
  }
}
