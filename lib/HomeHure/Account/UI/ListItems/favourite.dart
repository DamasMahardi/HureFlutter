import 'package:flutter/material.dart';
import 'package:uihure/Locale/locales.dart';
import 'package:uihure/Themes/colors.dart';

class Favourite extends StatefulWidget {
  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).fav,
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
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image(
                  image: AssetImage("images/Restaurants/Layer 1.png"),
                  height: 93.3,
                ),
                SizedBox(width: 13.3),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(AppLocalizations.of(context).store,
                        style: Theme.of(context).textTheme.subtitle2.copyWith(
                            color: Theme.of(context).secondaryHeaderColor)),
                    SizedBox(height: 8.0),
                    Text(AppLocalizations.of(context).type,
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            .copyWith(color: kLightTextColor, fontSize: 10.0)),
                    SizedBox(height: 10.3),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Color(0xff7ac81e),
                          size: 13,
                        ),
                        SizedBox(width: 10.0),
                        Text('4.2',
                            style: Theme.of(context).textTheme.caption.copyWith(
                                color: Color(0xff7ac81e),
                                fontSize: 10.0,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10.3),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: kIconColor,
                          size: 13,
                        ),
                        SizedBox(width: 10.0),
                        Text('2.4 km ',
                            style: Theme.of(context).textTheme.caption.copyWith(
                                color: kLightTextColor, fontSize: 10.0)),
                        Text('| ',
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                .copyWith(color: kMainColor, fontSize: 10.0)),
                        Text(AppLocalizations.of(context).storeAddress,
                            style: Theme.of(context).textTheme.caption.copyWith(
                                color: kLightTextColor, fontSize: 10.0)),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Image.asset(
                  'images/ic_favorite.png',
                  color: Colors.pinkAccent,
                  scale: 3,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image(
                  image: AssetImage("images/Restaurants/Layer 2.png"),
                  height: 93.3,
                ),
                SizedBox(width: 13.3),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(AppLocalizations.of(context).store,
                        style: Theme.of(context).textTheme.subtitle2.copyWith(
                            color: Theme.of(context).secondaryHeaderColor)),
                    SizedBox(height: 8.0),
                    Text(AppLocalizations.of(context).type,
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            .copyWith(color: kLightTextColor, fontSize: 10.0)),
                    SizedBox(height: 10.3),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Color(0xff7ac81e),
                          size: 13,
                        ),
                        SizedBox(width: 10.0),
                        Text('4.2',
                            style: Theme.of(context).textTheme.caption.copyWith(
                                color: Color(0xff7ac81e),
                                fontSize: 10.0,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10.3),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: kIconColor,
                          size: 13,
                        ),
                        SizedBox(width: 10.0),
                        Text('2.4 km ',
                            style: Theme.of(context).textTheme.caption.copyWith(
                                color: kLightTextColor, fontSize: 10.0)),
                        Text('| ',
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                .copyWith(color: kMainColor, fontSize: 10.0)),
                        Text(AppLocalizations.of(context).storeAddress,
                            style: Theme.of(context).textTheme.caption.copyWith(
                                color: kLightTextColor, fontSize: 10.0)),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Image.asset(
                  'images/ic_favorite.png',
                  color: Colors.pinkAccent,
                  scale: 3,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image(
                  image: AssetImage("images/Restaurants/Layer 3.png"),
                  height: 93.3,
                ),
                SizedBox(width: 13.3),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(AppLocalizations.of(context).jesica,
                        style: Theme.of(context).textTheme.subtitle2.copyWith(
                            color: Theme.of(context).secondaryHeaderColor)),
                    SizedBox(height: 8.0),
                    Text(AppLocalizations.of(context).type,
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            .copyWith(color: kLightTextColor, fontSize: 10.0)),
                    SizedBox(height: 10.3),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Color(0xff7ac81e),
                          size: 13,
                        ),
                        SizedBox(width: 10.0),
                        Text('4.2',
                            style: Theme.of(context).textTheme.caption.copyWith(
                                color: Color(0xff7ac81e),
                                fontSize: 10.0,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10.3),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: kIconColor,
                          size: 13,
                        ),
                        SizedBox(width: 10.0),
                        Text('2.4 km ',
                            style: Theme.of(context).textTheme.caption.copyWith(
                                color: kLightTextColor, fontSize: 10.0)),
                        Text('| ',
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                .copyWith(color: kMainColor, fontSize: 10.0)),
                        Text(AppLocalizations.of(context).storeAddress,
                            style: Theme.of(context).textTheme.caption.copyWith(
                                color: kLightTextColor, fontSize: 10.0)),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Image.asset(
                  'images/ic_favorite.png',
                  color: Colors.pinkAccent,
                  scale: 3,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image(
                  image: AssetImage("images/Restaurants/layer4.png"),
                  height: 93.3,
                ),
                SizedBox(width: 13.3),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(AppLocalizations.of(context).fish,
                        style: Theme.of(context).textTheme.subtitle2.copyWith(
                            color: Theme.of(context).secondaryHeaderColor)),
                    SizedBox(height: 8.0),
                    Text(AppLocalizations.of(context).type,
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            .copyWith(color: kLightTextColor, fontSize: 10.0)),
                    SizedBox(height: 10.3),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Color(0xff7ac81e),
                          size: 13,
                        ),
                        SizedBox(width: 10.0),
                        Text('4.2',
                            style: Theme.of(context).textTheme.caption.copyWith(
                                color: Color(0xff7ac81e),
                                fontSize: 10.0,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10.3),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: kIconColor,
                          size: 13,
                        ),
                        SizedBox(width: 10.0),
                        Text('2.4 km ',
                            style: Theme.of(context).textTheme.caption.copyWith(
                                color: kLightTextColor, fontSize: 10.0)),
                        Text('| ',
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                .copyWith(color: kMainColor, fontSize: 10.0)),
                        Text(AppLocalizations.of(context).storeAddress,
                            style: Theme.of(context).textTheme.caption.copyWith(
                                color: kLightTextColor, fontSize: 10.0)),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Image.asset(
                  'images/ic_favorite.png',
                  color: Colors.pinkAccent,
                  scale: 3,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image(
                  image: AssetImage("images/Restaurants/layer5.png"),
                  height: 93.3,
                ),
                SizedBox(width: 13.3),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(AppLocalizations.of(context).seven,
                        style: Theme.of(context).textTheme.subtitle2.copyWith(
                            color: Theme.of(context).secondaryHeaderColor)),
                    SizedBox(height: 8.0),
                    Text(AppLocalizations.of(context).type,
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            .copyWith(color: kLightTextColor, fontSize: 10.0)),
                    SizedBox(height: 10.3),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Color(0xff7ac81e),
                          size: 13,
                        ),
                        SizedBox(width: 10.0),
                        Text('4.2',
                            style: Theme.of(context).textTheme.caption.copyWith(
                                color: Color(0xff7ac81e),
                                fontSize: 10.0,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10.3),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: kIconColor,
                          size: 13,
                        ),
                        SizedBox(width: 10.0),
                        Text('2.4 km ',
                            style: Theme.of(context).textTheme.caption.copyWith(
                                color: kLightTextColor, fontSize: 10.0)),
                        Text('| ',
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                .copyWith(color: kMainColor, fontSize: 10.0)),
                        Text(AppLocalizations.of(context).storeAddress,
                            style: Theme.of(context).textTheme.caption.copyWith(
                                color: kLightTextColor, fontSize: 10.0)),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Image.asset(
                  'images/ic_favorite.png',
                  color: Colors.pinkAccent,
                  scale: 3,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image(
                  image: AssetImage("images/Restaurants/layer6.png"),
                  height: 93.3,
                ),
                SizedBox(width: 13.3),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(AppLocalizations.of(context).operum,
                        style: Theme.of(context).textTheme.subtitle2.copyWith(
                            color: Theme.of(context).secondaryHeaderColor)),
                    SizedBox(height: 8.0),
                    Text(AppLocalizations.of(context).type,
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            .copyWith(color: kLightTextColor, fontSize: 10.0)),
                    SizedBox(height: 10.3),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Color(0xff7ac81e),
                          size: 13,
                        ),
                        SizedBox(width: 10.0),
                        Text('4.2',
                            style: Theme.of(context).textTheme.caption.copyWith(
                                color: Color(0xff7ac81e),
                                fontSize: 10.0,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10.3),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: kIconColor,
                          size: 13,
                        ),
                        SizedBox(width: 10.0),
                        Text('2.4 km ',
                            style: Theme.of(context).textTheme.caption.copyWith(
                                color: kLightTextColor, fontSize: 10.0)),
                        Text('| ',
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                .copyWith(color: kMainColor, fontSize: 10.0)),
                        Text(AppLocalizations.of(context).storeAddress,
                            style: Theme.of(context).textTheme.caption.copyWith(
                                color: kLightTextColor, fontSize: 10.0)),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Image.asset(
                  'images/ic_favorite.png',
                  color: Colors.pinkAccent,
                  scale: 3,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image(
                  image: AssetImage("images/Restaurants/Layer 3.png"),
                  height: 93.3,
                ),
                SizedBox(width: 13.3),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(AppLocalizations.of(context).jesica,
                        style: Theme.of(context).textTheme.subtitle2.copyWith(
                            color: Theme.of(context).secondaryHeaderColor)),
                    SizedBox(height: 8.0),
                    Text(AppLocalizations.of(context).type,
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            .copyWith(color: kLightTextColor, fontSize: 10.0)),
                    SizedBox(height: 10.3),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Color(0xff7ac81e),
                          size: 13,
                        ),
                        SizedBox(width: 10.0),
                        Text('4.2',
                            style: Theme.of(context).textTheme.caption.copyWith(
                                color: Color(0xff7ac81e),
                                fontSize: 10.0,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10.3),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: kIconColor,
                          size: 13,
                        ),
                        SizedBox(width: 10.0),
                        Text('2.4 km ',
                            style: Theme.of(context).textTheme.caption.copyWith(
                                color: kLightTextColor, fontSize: 10.0)),
                        Text('| ',
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                .copyWith(color: kMainColor, fontSize: 10.0)),
                        Text(AppLocalizations.of(context).storeAddress,
                            style: Theme.of(context).textTheme.caption.copyWith(
                                color: kLightTextColor, fontSize: 10.0)),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Image.asset(
                  'images/ic_favorite.png',
                  color: Colors.pinkAccent,
                  scale: 3,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
