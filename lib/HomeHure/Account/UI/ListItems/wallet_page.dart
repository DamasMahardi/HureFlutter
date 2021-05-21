import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uihure/Locale/locales.dart';
import 'package:uihure/Routes/routes.dart';
import 'package:uihure/Themes/colors.dart';
import 'package:uihure/Themes/style.dart';

class WalletPage extends StatelessWidget {
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
        title: Text(AppLocalizations.of(context).wallet,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {/*......*/},
          ),
        ],
      ),
      body: Wallet(),
    );
  }
}

class Wallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 12.0,
            ),
            child: ListTile(
              title: Text(
                AppLocalizations.of(context).availableBalance.toUpperCase(),
                style: Theme.of(context).textTheme.headline6.copyWith(
                    letterSpacing: 0.67,
                    color: kHintColor,
                    fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                '\$ 258.50',
                style: listTitleTextStyle.copyWith(
                    fontSize: 35.0, color: kMainTextColor, letterSpacing: 0.18),
              ),
            ),
          ),
        ),
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 25),
              alignment: Alignment.bottomLeft,
              height: 50.0,
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              color: Theme.of(context).cardColor,
              child: Text(
                AppLocalizations.of(context).recent,
                style: Theme.of(context).textTheme.subtitle2.copyWith(
                    color: kTextColor,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.08),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.only(right: 20),
                height: 46.0,
                width: 134.0,
                decoration: BoxDecoration(
                    color: kMainColor, borderRadius: BorderRadius.circular(3)),
                child: FlatButton(
                  color: kMainColor,
                  onPressed: () =>
                      Navigator.pushNamed(context, PageRoutes.addToWallet),
                  child: Text(
                    AppLocalizations.of(context).addMoney,
                    style: bottomBarTextStyle.copyWith(
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(AppLocalizations.of(context).store,
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10.0),
                  Text('30 June 2018, 11.59 am',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: kTextColor, fontSize: 11.7)),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    '\$21.00',
                    style: Theme.of(context).textTheme.caption.copyWith(
                        fontWeight: FontWeight.w500, color: Color(0xffe32a2a)),
                  ),
                  SizedBox(height: 10.0),
                  Text('3 items',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: kTextColor, fontSize: 11.7)),
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: Theme.of(context).cardColor,
          thickness: 3.0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(AppLocalizations.of(context).storee,
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10.0),
                  Text('10 June 2018, 11.59 am',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: kTextColor, fontSize: 11.7)),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    '\$15.50',
                    style: Theme.of(context).textTheme.caption.copyWith(
                        fontWeight: FontWeight.w500, color: Color(0xffe32a2a)),
                  ),
                  SizedBox(height: 10.0),
                  Text('2 items',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: kTextColor, fontSize: 11.7)),
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: Theme.of(context).cardColor,
          thickness: 3.0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(AppLocalizations.of(context).jesica,
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10.0),
                  Text('4 June 2018, 11.59 am',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: kTextColor, fontSize: 11.7)),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    '\$10.50',
                    style: Theme.of(context).textTheme.caption.copyWith(
                        fontWeight: FontWeight.w500, color: Color(0xffe32a2a)),
                  ),
                  SizedBox(height: 10.0),
                  Text('1 item',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: kTextColor, fontSize: 11.7)),
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: Theme.of(context).cardColor,
          thickness: 3.0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(AppLocalizations.of(context).money,
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10.0),
                  Text('29 June 2018, 9.59 am',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: kTextColor, fontSize: 11.7)),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    '-\$100.00',
                    style: Theme.of(context).textTheme.caption.copyWith(
                        fontWeight: FontWeight.w500, color: Color(0xff7ac81e)),
                  ),
                  SizedBox(height: 10.0),
                  Text('Send to bank',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: kTextColor, fontSize: 11.7)),
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: Theme.of(context).cardColor,
          thickness: 3.0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(AppLocalizations.of(context).seven,
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10.0),
                  Text('10 June 2018, 11.59 am',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: kTextColor, fontSize: 11.7)),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    '\$10.50',
                    style: Theme.of(context).textTheme.caption.copyWith(
                        fontWeight: FontWeight.w500, color: Color(0xffe32a2a)),
                  ),
                  SizedBox(height: 10.0),
                  Text('1 item',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: kTextColor, fontSize: 11.7)),
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: Theme.of(context).cardColor,
          thickness: 3.0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(AppLocalizations.of(context).fish,
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10.0),
                  Text('3 items | 30 June 2018, 11.59 am',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: kTextColor, fontSize: 11.7)),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    '\$10.50',
                    style: Theme.of(context).textTheme.caption.copyWith(
                        fontWeight: FontWeight.w500, color: Color(0xffe32a2a)),
                  ),
                  SizedBox(height: 10.0),
                  Text('3 item',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: kTextColor, fontSize: 11.7)),
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: Theme.of(context).cardColor,
          thickness: 3.0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(AppLocalizations.of(context).store,
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10.0),
                  Text('3 items | 30 June 2018, 11.59 am',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: kTextColor, fontSize: 11.7)),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    '\$10.50',
                    style: Theme.of(context).textTheme.caption.copyWith(
                        fontWeight: FontWeight.w500, color: Color(0xffe32a2a)),
                  ),
                  SizedBox(height: 10.0),
                  Text('3 item',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: kTextColor, fontSize: 11.7)),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
// Positioned.directional(
//           textDirection: Directionality.of(context),
//           top: 70.0,
//           end: 20.0,
//           child: Container(
//             height: 46.0,
//             width: 134.0,
//             decoration: BoxDecoration(
//                 color: kMainColor, borderRadius: BorderRadius.circular(3)),
//             child: FlatButton(
//               color: kMainColor,
//               onPressed: () =>
//                   Navigator.pushNamed(context, PageRoutes.addToWallet),
//               child: Text(
//                 AppLocalizations.of(context).addMoney,
//                 style: bottomBarTextStyle.copyWith(fontWeight: FontWeight.w500),
//               ),
//             ),
//           ),
//         ),
