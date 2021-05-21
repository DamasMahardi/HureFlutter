
import 'package:flutter/material.dart';
import 'package:uihure/Components/bottom_bar.dart';
import 'package:uihure/Locale/locales.dart';
import 'package:uihure/Routes/routes.dart';
import 'package:uihure/Themes/colors.dart';
import 'package:uihure/HomeOrderAccount/home_order_account.dart';

class TableBooked extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
        Column(
          children: <Widget>[
            Spacer(
              flex: 1,
            ),
            Padding(
              padding: EdgeInsets.all(60.0),
              child:
                Image.asset(
                  'images/table booked.png',
                  height: 265.7,
                  width: 260.7,
                ),
               
            ),
            Text(
              AppLocalizations.of(context).booked,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(fontSize: 23.3),
            ),
            Text(
              AppLocalizations.of(context).thankstb,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  .copyWith(color: kDisabledColor),
            ),
            Spacer(
              flex: 2,
            ),
            BottomBar(
              text: AppLocalizations.of(context).orderTextt,
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeOrderAccount(1),
                  )),
            )
          ],
        ),
        
    );
  }
}
