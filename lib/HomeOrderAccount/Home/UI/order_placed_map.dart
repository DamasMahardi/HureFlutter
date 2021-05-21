import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uihure/HomeOrderAccount/Home/UI/slide_up_panel.dart';
import 'package:uihure/Locale/locales.dart';
import 'package:uihure/Themes/colors.dart';
import 'package:uihure/Themes/style.dart';

class OrderMapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OrderMap();
  }
}

class OrderMap extends StatefulWidget {
  @override
  _OrderMapState createState() => _OrderMapState();
}

class _OrderMapState extends State<OrderMap> {
  bool sliderOpen = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120.0),
        child: AppBar(
          titleSpacing: 0.0,
          title: null,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(0.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 16.3),
                  child: Image.asset(
                    'images/Restaurants/Layer 1.png',
                    height: 42.3,
                    width: 33.7,
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      AppLocalizations.of(context).store,
                      style: Theme.of(context).textTheme.caption.copyWith(
                          letterSpacing: 0.07, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      '20 June, 11:35am',
                      style: Theme.of(context).textTheme.headline6.copyWith(
                          fontSize: 11.7,
                          letterSpacing: 0.06,
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
                          style: Theme.of(context).textTheme.headline6.copyWith(
                              fontSize: 11.7, color: Color(0xffc1c1c1)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: Image.asset(
                    'images/map1.png',
                    fit: BoxFit.cover,
                    width: 500,
                  ),
                ),
                sliderOpen
                    ? SizedBox.shrink()
                    : Align(
                        alignment: Alignment.bottomCenter,
                        child: ListTile(
                          tileColor: Colors.white,
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
                                    // Navigator.pushNamed(context, PageRoutes.chatPage);
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
                sliderOpen
                    ? Align(
                        alignment: Alignment.bottomCenter,
                        child: SlideUpPanel())
                    : SizedBox.shrink(),
              ],
            ),
          ),
          Container(
            height: 60.0,
            color: Theme.of(context).cardColor,
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '3 items',
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      sliderOpen = !sliderOpen;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 35,
                    width: 125,
                    decoration: BoxDecoration(
                        color: Color(0xffFFEEC8),
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: kMainColor)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          sliderOpen ? "Close" : "View Order",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(color: kMainColor, fontSize: 15),
                        ),
                        Icon(
                          sliderOpen
                              ? Icons.keyboard_arrow_down_rounded
                              : Icons.keyboard_arrow_up_rounded,
                          color: kMainColor,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
