import 'package:flutter/material.dart';
import 'package:uihure/Components/bottom_bar.dart';
import 'package:uihure/Locale/locales.dart';
import 'package:uihure/Routes/routes.dart';
import 'package:uihure/Themes/colors.dart';

class OrderPlaced extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (Column(
        children: <Widget>[
          SizedBox(
            height: 80,
          ),
          Container(
            height: 230,
            child: Image.asset(
              'images/order_placed.png',
            ),
          ),
          Spacer(),
          Text(
            AppLocalizations.of(context).placed,
            style:
                Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 23.3),
          ),
          Text(
            AppLocalizations.of(context).thanks,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .subtitle2
                .copyWith(color: kDisabledColor, fontSize: 18),
          ),
          Spacer(
            flex: 2,
          ),
          BottomBar(
            text: AppLocalizations.of(context).orderText,
            onTap: () => Navigator.pushNamed(context, PageRoutes.orderPage),
          )
        ],
      )),
    );
  }
}
