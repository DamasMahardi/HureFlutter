import 'package:flutter/material.dart';
import 'package:uihure/HomeOrderAccount/Home/UI/order_placed_map.dart';
import 'package:uihure/Locale/locales.dart';
import 'package:uihure/Routes/routes.dart';
import 'package:uihure/Themes/colors.dart';
import 'package:uihure/Themes/style.dart';

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TabBar(
                indicatorColor: Colors.transparent,
                labelColor: Color(0xff000000),
                unselectedLabelColor: Color(0xffc4c8c1),
                tabs: [
                  Tab(
                    child: Text(
                      AppLocalizations.of(context).orderText,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.3,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(AppLocalizations.of(context).tabletext,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.3,
                        )),
                  )
                ],
              ),
            ],
          ),
          automaticallyImplyLeading: false,
        ),
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: <Widget>[
            SliverFillRemaining(
              child: TabBarView(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OrderMapPage(),
                      ),
                    ),
                    child: ListView(
                      children: <Widget>[
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 51.0,
                          padding: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 20),
                          color: Theme.of(context).cardColor,
                          child: Text(
                            AppLocalizations.of(context).process,
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                .copyWith(
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
                                subtitle: Text(
                                  'Delivery | 20 Jun, 11:35',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      .copyWith(
                                          fontSize: 11.7,
                                          color: Color(0xffc1c1c1)),
                                ),
                                trailing: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      AppLocalizations.of(context).pickup,
                                      style: orderMapAppBarTextStyle.copyWith(
                                          color: kMainColor),
                                    ),
                                    SizedBox(height: 7.0),
                                    Text(
                                      '\$ 21.00 | ${AppLocalizations.of(context).paypal}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
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
                          thickness: 1.0,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 80.0),
                          child: Text(
                            '${AppLocalizations.of(context).sandwich}  x1',
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                .copyWith(fontSize: 12.0, letterSpacing: 0.05),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 80.0, vertical: 5.0),
                          child: Text(
                            '${AppLocalizations.of(context).chicken}  x1',
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                .copyWith(fontSize: 12.0, letterSpacing: 0.05),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 80.0),
                          child: Text(
                            '${AppLocalizations.of(context).juice}  x1',
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                .copyWith(fontSize: 12.0, letterSpacing: 0.05),
                          ),
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
                                  'Take Away | 11:35 min',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      .copyWith(
                                          fontSize: 11.7,
                                          color: Color(0xffc1c1c1)),
                                ),
                                trailing: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      "Ready to Pickup",
                                      style: orderMapAppBarTextStyle.copyWith(
                                          color: kMainColor),
                                    ),
                                    SizedBox(height: 7.0),
                                    Text(
                                      '\$ 21.00 | ${AppLocalizations.of(context).paypal}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
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
                          thickness: 1.0,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 80.0),
                          child: Text(
                            '${AppLocalizations.of(context).sandwich}  x1',
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                .copyWith(fontSize: 12.0, letterSpacing: 0.05),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 80.0),
                          child: Text(
                            '${AppLocalizations.of(context).juice}  x1',
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                .copyWith(fontSize: 12.0, letterSpacing: 0.05),
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Container(
                          height: 51.0,
                          padding: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 20),
                          color: Theme.of(context).cardColor,
                          child: Text(
                            AppLocalizations.of(context).past.toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                .copyWith(
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
                                  'Delivery | 20 June, 11:35am',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      .copyWith(
                                          fontSize: 11.7,
                                          color: Color(0xffc1c1c1)),
                                ),
                                trailing: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      AppLocalizations.of(context).deliv,
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption
                                          .copyWith(
                                              fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 7.0),
                                    Text(
                                      '\$ 18.00 | ${AppLocalizations.of(context).credit}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
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
                          thickness: 1.0,
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 80.0),
                              child: Text(
                                '${AppLocalizations.of(context).sandwich}  x1',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    .copyWith(
                                        fontSize: 12.0, letterSpacing: 0.05),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: InkWell(
                                onTap: () => Navigator.pushNamed(
                                    context, PageRoutes.rate),
                                child: Text(
                                  AppLocalizations.of(context).rate,
                                  style: orderMapAppBarTextStyle.copyWith(
                                      color: Colors.lightGreen),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 80.0, vertical: 5.0),
                          child: Text(
                            '${AppLocalizations.of(context).chicken}  x1',
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                .copyWith(fontSize: 12.0, letterSpacing: 0.05),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Divider(
                          color: Theme.of(context).cardColor,
                          thickness: 1,
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
                                  'Dine in | 20 June, 11:35am',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      .copyWith(
                                          fontSize: 11.7,
                                          color: Color(0xffc1c1c1)),
                                ),
                                trailing: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      AppLocalizations.of(context).deliv,
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption
                                          .copyWith(
                                              fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 7.0),
                                    Text(
                                      '\$ 8.00 | ${AppLocalizations.of(context).credit}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
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
                          thickness: 1.0,
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 80.0),
                              child: Text(
                                '${AppLocalizations.of(context).sandwich}  x1',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    .copyWith(
                                        fontSize: 12.0, letterSpacing: 0.05),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: InkWell(
                                // onTap: () => Navigator.pushNamed(
                                //     context, PageRoutes.rate),
                                child: Row(
                                  children: [
                                    Text(
                                      "Rated ★ 5.0 ",
                                      style: orderMapAppBarTextStyle.copyWith(
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Divider(
                          color: Theme.of(context).cardColor,
                          thickness: 1,
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OrderMapPage(),
                      ),
                    ),
                    child: ListView(
                      children: <Widget>[
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 51.0,
                          padding: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 20),
                          color: Theme.of(context).cardColor,
                          child: Text(
                            AppLocalizations.of(context).upcomming,
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                .copyWith(
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
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
                                              fontSize: 11.7,
                                              color: Color(0xffc1c1c1)),
                                    ),
                                    Text(
                                      '20 Jun, 11:30 am',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
                                              fontSize: 11.7,
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
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
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
                                subtitle: Row(
                                  children: [
                                    Text(
                                      'Booking for ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
                                              fontSize: 11.7,
                                              color: Color(0xffc1c1c1)),
                                    ),
                                    Text(
                                      '20 Jun, 11:30 am',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
                                              fontSize: 11.7,
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
                                      '3 Persons',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
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
                          padding: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 20),
                          color: Theme.of(context).cardColor,
                          child: Text(
                            AppLocalizations.of(context).pastt,
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                .copyWith(
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
                                subtitle: Row(
                                  children: [
                                    Text(
                                      'Booking for ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
                                              fontSize: 11.7,
                                              color: Color(0xffc1c1c1)),
                                    ),
                                    Text(
                                      '20 Jun, 11:30 am',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
                                              fontSize: 11.7,
                                              color: Colors.black),
                                    )
                                  ],
                                ),
                                trailing: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      AppLocalizations.of(context).rebook,
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption
                                          .copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: kMainColor),
                                    ),
                                    SizedBox(height: 7.0),
                                    Text(
                                      '2 Persons',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
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
                                subtitle: Row(
                                  children: [
                                    Text(
                                      'Booking for ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
                                              fontSize: 11.7,
                                              color: Color(0xffc1c1c1)),
                                    ),
                                    Text(
                                      '20 Jun, 11:30 am',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
                                              fontSize: 11.7,
                                              color: Colors.black),
                                    )
                                  ],
                                ),
                                trailing: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      AppLocalizations.of(context).rebook,
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption
                                          .copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: kMainColor),
                                    ),
                                    SizedBox(height: 7.0),
                                    Text(
                                      '2 Persons',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
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
                                subtitle: Row(
                                  children: [
                                    Text(
                                      'Booking for ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
                                              fontSize: 11.7,
                                              color: Color(0xffc1c1c1)),
                                    ),
                                    Text(
                                      '20 Jun, 11:30 am',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
                                              fontSize: 11.7,
                                              color: Colors.black),
                                    )
                                  ],
                                ),
                                trailing: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      AppLocalizations.of(context).rebook,
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption
                                          .copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: kMainColor),
                                    ),
                                    SizedBox(height: 7.0),
                                    Text(
                                      '4 Persons',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
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
                                subtitle: Row(
                                  children: [
                                    Text(
                                      'Booking for ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
                                              fontSize: 11.7,
                                              color: Color(0xffc1c1c1)),
                                    ),
                                    Text(
                                      '20 Jun, 11:30 am',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
                                              fontSize: 11.7,
                                              color: Colors.black),
                                    )
                                  ],
                                ),
                                trailing: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      AppLocalizations.of(context).rebook,
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption
                                          .copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: kMainColor),
                                    ),
                                    SizedBox(height: 7.0),
                                    Text(
                                      '3 Persons',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
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
                                subtitle: Row(
                                  children: [
                                    Text(
                                      'Booking for ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
                                              fontSize: 11.7,
                                              color: Color(0xffc1c1c1)),
                                    ),
                                    Text(
                                      '20 Jun, 11:30 am',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
                                              fontSize: 11.7,
                                              color: Colors.black),
                                    )
                                  ],
                                ),
                                trailing: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      AppLocalizations.of(context).rebook,
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption
                                          .copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: kMainColor),
                                    ),
                                    SizedBox(height: 7.0),
                                    Text(
                                      '2 Persons',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
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
                                subtitle: Row(
                                  children: [
                                    Text(
                                      'Booking for ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
                                              fontSize: 11.7,
                                              color: Color(0xffc1c1c1)),
                                    ),
                                    Text(
                                      '20 Jun, 11:30 am',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
                                              fontSize: 11.7,
                                              color: Colors.black),
                                    )
                                  ],
                                ),
                                trailing: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      AppLocalizations.of(context).rebook,
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption
                                          .copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: kMainColor),
                                    ),
                                    SizedBox(height: 7.0),
                                    Text(
                                      '3 Persons',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
