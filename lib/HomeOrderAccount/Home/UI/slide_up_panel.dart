import 'package:flutter/material.dart';
import 'package:uihure/Locale/locales.dart';
import 'package:uihure/Routes/routes.dart';
import 'package:uihure/Themes/colors.dart';

class SlideUpPanel extends StatefulWidget {
  @override
  _SlideUpPanelState createState() => _SlideUpPanelState();
}

class _SlideUpPanelState extends State<SlideUpPanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 215.0,
      padding: EdgeInsets.only(left: 4.0),
      color: Theme.of(context).cardColor,
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                child: Stack(
                  children: <Widget>[
                    Hero(
                      tag: 'Delivery Boy',
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 10.0, top: 14.0),
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 22.0,
                            backgroundImage: AssetImage('images/profile.jpg'),
                          ),
                          title: Text(
                            'George Anderson',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          subtitle: Text(
                            'Delivery Partner',
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                .copyWith(
                                    fontSize: 11.7,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffc2c2c2)),
                          ),
                          trailing: FittedBox(
                            fit: BoxFit.fill,
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.message, color: kMainColor),
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, PageRoutes.chatPage);
                                  },
                                ),
                                IconButton(
                                  icon: Icon(Icons.phone, color: kMainColor),
                                  onPressed: () {
                                    /*.......*/
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.0),
              Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/ic_veg.png',
                        scale: 2.5,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        AppLocalizations.of(context).sandwich,
                        style: Theme.of(context).textTheme.headline4.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 15.0),
                      ),
                      Spacer(),
                      Text(
                        '1',
                        style: Theme.of(context).textTheme.headline4.copyWith(
                            fontWeight: FontWeight.w500, fontSize: 15.0),
                      ),
                      SizedBox(
                        width: 50.0,
                      ),
                      Text(
                        '\$ 5.00',
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            .copyWith(fontSize: 13.3),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 40.0,
                      ),
                      Text(
                        AppLocalizations.of(context).cheese,
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            .copyWith(fontSize: 13.3),
                      ),
                      Spacer(),
                      Text(
                        '\$ 3.00',
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            .copyWith(fontSize: 13.3),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/ic_nonveg.png',
                        scale: 2.5,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        AppLocalizations.of(context).chicken,
                        style: Theme.of(context).textTheme.headline4.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 15.0),
                      ),
                      Spacer(),
                      Text(
                        '1',
                        style: Theme.of(context).textTheme.headline4.copyWith(
                            fontWeight: FontWeight.w500, fontSize: 15.0),
                      ),
                      SizedBox(
                        width: 50.0,
                      ),
                      Text(
                        '\$ 7.00',
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            .copyWith(fontSize: 13.3),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/ic_veg.png',
                        scale: 2.5,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        AppLocalizations.of(context).juice,
                        style: Theme.of(context).textTheme.headline4.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 15.0),
                      ),
                      Spacer(),
                      Text(
                        '1',
                        style: Theme.of(context).textTheme.headline4.copyWith(
                            fontWeight: FontWeight.w500, fontSize: 15.0),
                      ),
                      SizedBox(
                        width: 50.0,
                      ),
                      Text(
                        '\$ 4.50',
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            .copyWith(fontSize: 13.3),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8.0),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                child:
                    Text(AppLocalizations.of(context).paymentInfo.toUpperCase(),
                        style: Theme.of(context).textTheme.headline4.copyWith(
                              color: kDisabledColor,
                              fontSize: 13.3,
                            )),
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
              Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        AppLocalizations.of(context).sub,
                        style: Theme.of(context).textTheme.caption,
                      ),
                      Text(
                        '\$ 19.50',
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ]),
              ),
              Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        AppLocalizations.of(context).service,
                        style: Theme.of(context).textTheme.caption,
                      ),
                      Text(
                        '\$ 1.50',
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ]),
              ),
              Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        AppLocalizations.of(context).cod,
                        style: Theme.of(context).textTheme.headline6.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).secondaryHeaderColor,
                            ),
                      ),
                      Text(
                        '\$ 21.00',
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
