import 'package:flutter/material.dart';
import 'package:uihure/HomeOrderAccount/Home/UI/order_placed_map.dart';
import 'package:uihure/Locale/locales.dart';
import 'package:uihure/Routes/routes.dart';
import 'package:uihure/Themes/colors.dart';
import 'package:uihure/Themes/style.dart';

class Tablebooking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).tabletext,
            style: Theme.of(context).textTheme.bodyText1),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OrderMapPage(),
          ),
        ),
        child: ListView(
          children: <Widget>[
            Container(
              height: 51.0,
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              color: Theme.of(context).cardColor,
              child: Text(
                AppLocalizations.of(context).upcomming,
                style: Theme.of(context).textTheme.headline6.copyWith(
                    color: Color(0xff99a596),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.67),
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Image.asset(
                    'images/Restaurants/Layer 1.png',
                    scale: 6,
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      AppLocalizations.of(context).store,
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Row(
                      children: [
                        Text(
                          'Booking for ',
                          style: Theme.of(context).textTheme.headline6.copyWith(
                              fontSize: 11.7, color: Color(0xffc1c1c1)),
                        ),
                        Text(
                          '20 Jun, 11:30 am',
                          style: Theme.of(context).textTheme.headline6.copyWith(
                              fontSize: 11.7,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          AppLocalizations.of(context).cancel,
                          style: orderMapAppBarTextStyle.copyWith(
                              color: kMainColor),
                        ),
                        SizedBox(height: 7.0),
                        Text(
                          '2 Persons',
                          style: Theme.of(context).textTheme.headline6.copyWith(
                              fontSize: 11.7,
                              letterSpacing: 0.06,
                              color: Color(0xffc1c1c1)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 8.0,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Image.asset(
                    'images/Restaurants/Layer 2.png',
                    scale: 6,
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      AppLocalizations.of(context).storee,
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Booking for 19 Jun, 10:00 am',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontSize: 11.7, color: Color(0xffc1c1c1)),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          AppLocalizations.of(context).cancel,
                          style: orderMapAppBarTextStyle.copyWith(
                              color: kMainColor),
                        ),
                        SizedBox(height: 7.0),
                        Text(
                          '3 Persons',
                          style: Theme.of(context).textTheme.headline6.copyWith(
                              fontSize: 11.7,
                              letterSpacing: 0.06,
                              color: Color(0xffc1c1c1)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Container(
              height: 51.0,
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              color: Theme.of(context).cardColor,
              child: Text(
                AppLocalizations.of(context).pastt,
                style: Theme.of(context).textTheme.headline6.copyWith(
                    color: Color(0xff99a596),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.67),
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Image.asset(
                    'images/Restaurants/layer5.png',
                    scale: 6,
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      AppLocalizations.of(context).seven,
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Booked for 8 Jun, 10.07 am',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontSize: 11.7, color: Color(0xffc1c1c1)),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          AppLocalizations.of(context).rebook,
                          style: Theme.of(context).textTheme.caption.copyWith(
                              fontWeight: FontWeight.bold, color: kMainColor),
                        ),
                        SizedBox(height: 7.0),
                        Text(
                          '2 Persons',
                          style: Theme.of(context).textTheme.headline6.copyWith(
                              fontSize: 11.7,
                              letterSpacing: 0.06,
                              color: Color(0xffc1c1c1)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 8.0,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Image.asset(
                    'images/Restaurants/Layer 3.png',
                    scale: 6,
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      AppLocalizations.of(context).jesica,
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Booked for 8 Jun, 11.00 am',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontSize: 11.7, color: Color(0xffc1c1c1)),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          AppLocalizations.of(context).rebook,
                          style: Theme.of(context).textTheme.caption.copyWith(
                              fontWeight: FontWeight.bold, color: kMainColor),
                        ),
                        SizedBox(height: 7.0),
                        Text(
                          '2 Persons',
                          style: Theme.of(context).textTheme.headline6.copyWith(
                              fontSize: 11.7,
                              letterSpacing: 0.06,
                              color: Color(0xffc1c1c1)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 8.0,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Image.asset(
                    'images/Restaurants/Layer 1.png',
                    scale: 6,
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      AppLocalizations.of(context).store,
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Booked for 17 Jun, 9.00 am',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontSize: 11.7, color: Color(0xffc1c1c1)),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          AppLocalizations.of(context).rebook,
                          style: Theme.of(context).textTheme.caption.copyWith(
                              fontWeight: FontWeight.bold, color: kMainColor),
                        ),
                        SizedBox(height: 7.0),
                        Text(
                          '4 Persons',
                          style: Theme.of(context).textTheme.headline6.copyWith(
                              fontSize: 11.7,
                              letterSpacing: 0.06,
                              color: Color(0xffc1c1c1)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 8.0,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Image.asset(
                    'images/Restaurants/Layer 3.png',
                    scale: 6,
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      AppLocalizations.of(context).jesica,
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Booked for 9 Jun, 11.40 am',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontSize: 11.7, color: Color(0xffc1c1c1)),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          AppLocalizations.of(context).rebook,
                          style: Theme.of(context).textTheme.caption.copyWith(
                              fontWeight: FontWeight.bold, color: kMainColor),
                        ),
                        SizedBox(height: 7.0),
                        Text(
                          '3 Persons',
                          style: Theme.of(context).textTheme.headline6.copyWith(
                              fontSize: 11.7,
                              letterSpacing: 0.06,
                              color: Color(0xffc1c1c1)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 8.0,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Image.asset(
                    'images/Restaurants/Layer 2.png',
                    scale: 6,
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      AppLocalizations.of(context).storee,
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Booked for 8 Jun, 11.00 am',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontSize: 11.7, color: Color(0xffc1c1c1)),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          AppLocalizations.of(context).rebook,
                          style: Theme.of(context).textTheme.caption.copyWith(
                              fontWeight: FontWeight.bold, color: kMainColor),
                        ),
                        SizedBox(height: 7.0),
                        Text(
                          '2 Persons',
                          style: Theme.of(context).textTheme.headline6.copyWith(
                              fontSize: 11.7,
                              letterSpacing: 0.06,
                              color: Color(0xffc1c1c1)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 8.0,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Image.asset(
                    'images/Restaurants/layer5.png',
                    scale: 6,
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      AppLocalizations.of(context).seven,
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Booked for 8 Jun, 11.00 am',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontSize: 11.7, color: Color(0xffc1c1c1)),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          AppLocalizations.of(context).rebook,
                          style: Theme.of(context).textTheme.caption.copyWith(
                              fontWeight: FontWeight.bold, color: kMainColor),
                        ),
                        SizedBox(height: 7.0),
                        Text(
                          '3 Persons',
                          style: Theme.of(context).textTheme.headline6.copyWith(
                              fontSize: 11.7,
                              letterSpacing: 0.06,
                              color: Color(0xffc1c1c1)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 8.0,
            ),
          ],
        ),
      ),
    );
  }
}
