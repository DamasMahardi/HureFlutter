import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uihure/Components/bottom_bar.dart';

import 'package:uihure/Locale/locales.dart';
import 'package:uihure/Themes/colors.dart';
import 'package:uihure/Themes/style.dart';
import 'package:uihure/Components/textfield.dart';

class AddMoney extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).addMoney,
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
      body: Add(),
    );
  }
}

class Add extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          AppLocalizations.of(context)
                              .availableBalance
                              .toUpperCase(),
                          style: Theme.of(context).textTheme.headline6.copyWith(
                              letterSpacing: 0.67,
                              color: kHintColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Text(
                        '\$ 258.50',
                        style: listTitleTextStyle.copyWith(
                            fontSize: 35.0,
                            color: Colors.black,
                            letterSpacing: 0.18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 8.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          AppLocalizations.of(context).bankInfo.toUpperCase(),
                          style: Theme.of(context).textTheme.headline6.copyWith(
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.67,
                              color: kHintColor),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    smallTextFormField(
                      AppLocalizations.of(context)
                          .accountHolderName
                          .toUpperCase(),
                      'Samantha Smith',
                    ),
                    smallTextFormField(
                      AppLocalizations.of(context).bankName.toUpperCase(),
                      'HBNC Bank of New York',
                    ),
                    smallTextFormField(
                      AppLocalizations.of(context).branchCode.toUpperCase(),
                      '+1 987 654 3210',
                    ),
                    smallTextFormField(
                      AppLocalizations.of(context).accountNumber.toUpperCase(),
                      '4321 4567 6789 8901',
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 8.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: smallTextFormField(
                AppLocalizations.of(context)
                    .enterAmountToTransfer
                    .toUpperCase(),
                '\$ 500',
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: BottomBar(
            text: "Send to Bank",
            onTap: () => Navigator.pop(context),
          ),
        )
      ],
    );
  }
}
