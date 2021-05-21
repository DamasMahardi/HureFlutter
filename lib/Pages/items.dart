import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:uihure/Components/bottom_bar.dart';
import 'package:uihure/Components/custom_appbar.dart';
import 'package:uihure/Components/entry_field.dart';
import 'package:uihure/HomeOrderAccount/Home/UI/Stores/stores.dart';
import 'package:uihure/HomeOrderAccount/Home/UI/booking_row.dart';
import 'package:uihure/HomeOrderAccount/Home/UI/choose_ordering_method.dart';
import 'package:uihure/Locale/locales.dart';
import 'package:uihure/Routes/routes.dart';
import 'package:uihure/Themes/colors.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

List<String> list = ['Extra Cheese', 'Extra Mayonnaise', 'Extra Veggies'];
List<String> list1 = ['\$ 3.00', '\$ 2.00', '\$ 1.50'];

class ItemsPage extends StatefulWidget {
  String name;
  bool isBooking;
  ItemsPage(this.name, [this.isBooking = false]);

  @override
  _ItemsPageState createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  bool itemAdded = false;
  int itemCount = 0;
  int itemCount1 = 0;
  int itemCount2 = 0;

  @override
  Widget build(BuildContext context) {
    var appLocalization = AppLocalizations.of(context);
    final List<Tab> tabs = <Tab>[
      Tab(text: appLocalization.fast),
      Tab(text: appLocalization.stater.toUpperCase()),
      Tab(text: appLocalization.mainCourse.toUpperCase()),
      Tab(text: appLocalization.desert.toUpperCase()),
    ];
    return Material(
      child: Stack(
        children: <Widget>[
          DefaultTabController(
            length: tabs.length,
            child: Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(185.0),
                child: CustomAppBar(
                  leading: IconButton(
                    icon: Icon(
                      Icons.chevron_left,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  actions: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Icon(
                        Icons.favorite_border,
                        size: 19.5,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Icon(Icons.search),
                    )
                  ],
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(0.0),
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, PageRoutes.review),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(widget.name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .copyWith(
                                            color: Theme.of(context)
                                                .secondaryHeaderColor)),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(AppLocalizations.of(context).type,
                                    style:
                                        Theme.of(context).textTheme.overline),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: kIconColor,
                                      size: 13,
                                    ),
                                    SizedBox(width: 10.0),
                                    Text('2.4 km ',
                                        style: Theme.of(context)
                                            .textTheme
                                            .overline),
                                    Text('| ',
                                        style: Theme.of(context)
                                            .textTheme
                                            .overline
                                            .copyWith(color: kMainColor)),
                                    Text(
                                        AppLocalizations.of(context)
                                            .storeAddress,
                                        style: Theme.of(context)
                                            .textTheme
                                            .overline),
                                    Spacer(),
                                    Icon(
                                      Icons.star,
                                      color: Color(0xff7ac81e),
                                      size: 13,
                                    ),
                                    SizedBox(width: 8.0),
                                    Text('4.2',
                                        style: Theme.of(context)
                                            .textTheme
                                            .overline
                                            .copyWith(
                                                color: Color(0xff7ac81e))),
                                    SizedBox(width: 8.0),
                                    Text('148 reviews',
                                        style: Theme.of(context)
                                            .textTheme
                                            .overline),
                                    SizedBox(width: 8.0),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: kIconColor,
                                      size: 10,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          SizedBox(
                            height: 18,
                          ),
                          // BookingRow(),
                          TabBar(
                            tabs: tabs,
                            isScrollable: true,
                            labelColor: kMainColor,
                            unselectedLabelColor: kLightTextColor,
                            indicatorPadding:
                                EdgeInsets.symmetric(horizontal: 24.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              body: TabBarView(
                children: tabs.map((Tab tab) {
                  return ListView(
                    padding: EdgeInsets.only(bottom: 60),
                    children: <Widget>[
                      // Container(
                      //   padding: EdgeInsets.symmetric(
                      //       vertical: 16.0, horizontal: 20.0),
                      //   color: Theme.of(context).cardColor,
                      //   child: Text(
                      //     AppLocalizations.of(context).veg.toUpperCase(),
                      //     style: Theme.of(context).textTheme.caption.copyWith(
                      //         color: kDisabledColor,
                      //         fontWeight: FontWeight.bold,
                      //         letterSpacing: 0.67),
                      //   ),
                      // ),
                      ListTile(
                        leading: Image.asset(
                          'images/Food images/2.png',
                          scale: 3,
                        ),
                        title: Text(AppLocalizations.of(context).sandwich,
                            style: Theme.of(context)
                                .textTheme
                                .headline2
                                .copyWith(
                                    fontSize: 15, fontWeight: FontWeight.w600)),
                        subtitle: Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'images/ic_veg.png',
                                height: 16.0,
                                width: 16.7,
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              Text('\$ 5.00',
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(fontSize: 15)),
                              SizedBox(
                                width: 8.0,
                              ),
                              widget.isBooking
                                  ? SizedBox.shrink()
                                  : InkWell(
                                      onTap: () {
                                        showModalBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            return Container(
                                                height: 280,
                                                child: BottomSheetWidget());
                                          },
                                        );
                                      },
                                      child: Text(
                                        AppLocalizations.of(context).customize,
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption
                                            .copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: kMainColor),
                                      ),
                                    ),
                            ],
                          ),
                        ),
                        trailing: widget.isBooking
                            ? SizedBox.shrink()
                            : itemCount == 0
                                ? Container(
                                    height: 33.0,
                                    child: FlatButton(
                                      child: Text(
                                        AppLocalizations.of(context).add,
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption
                                            .copyWith(
                                                color: kMainColor,
                                                fontWeight: FontWeight.bold),
                                      ),
                                      textTheme: ButtonTextTheme.accent,
                                      onPressed: () {
                                        setState(() {
                                          itemCount++;
                                          itemAdded = true;
                                        });
                                      },
                                    ),
                                  )
                                : FittedBox(
                                    child: Container(
                                      height: 33.0,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 12.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: kMainColor),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      child: Row(
                                        children: <Widget>[
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                itemCount--;
                                              });
                                            },
                                            child: Icon(
                                              Icons.remove,
                                              color: kMainColor,
                                              size: 20.0,
                                              //size: 23.3,
                                            ),
                                          ),
                                          SizedBox(width: 8.0),
                                          Text(itemCount.toString(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption),
                                          SizedBox(width: 8.0),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                itemCount++;
                                              });
                                            },
                                            child: Icon(
                                              Icons.add,
                                              color: kMainColor,
                                              size: 20.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      ListTile(
                        leading: Image.asset(
                          'images/Food images/5.png',
                          scale: 3,
                        ),
                        title: Text(AppLocalizations.of(context).burger,
                            style: Theme.of(context)
                                .textTheme
                                .headline2
                                .copyWith(
                                    fontSize: 15, fontWeight: FontWeight.w600)),
                        subtitle: Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'images/ic_veg.png',
                                height: 16.0,
                                width: 16.7,
                              ),

                              SizedBox(
                                width: 8.0,
                              ),
                              Text('\$ 7.00',
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(fontSize: 15)),
                              SizedBox(
                                width: 8.0,
                              ),
                              // InkWell(
                              //   onTap: () {
                              //     showModalBottomSheet(
                              //       context: context,
                              //       builder: (context) {
                              //         return Container(
                              //             height: 280,
                              //             child: BottomSheetWidget());
                              //       },
                              //     );
                              //   },
                              //   child: Text(
                              //     AppLocalizations.of(context).customize,
                              //     style: Theme.of(context)
                              //         .textTheme
                              //         .caption
                              //         .copyWith(
                              //             fontWeight: FontWeight.bold,
                              //             color: kMainColor),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        trailing: widget.isBooking
                            ? SizedBox.shrink()
                            : itemCount1 == 0
                                ? Container(
                                    height: 33.0,
                                    child: FlatButton(
                                      child: Text(
                                        AppLocalizations.of(context).add,
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption
                                            .copyWith(
                                                color: kMainColor,
                                                fontWeight: FontWeight.bold),
                                      ),
                                      textTheme: ButtonTextTheme.accent,
                                      onPressed: () {
                                        setState(() {
                                          itemCount1++;
                                          itemAdded = true;
                                        });
                                      },
                                    ),
                                  )
                                : FittedBox(
                                    child: Container(
                                      height: 33.0,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 12.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: kMainColor),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      child: Row(
                                        children: <Widget>[
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                itemCount1--;
                                              });
                                            },
                                            child: Icon(
                                              Icons.remove,
                                              color: kMainColor,
                                              size: 20.0,
                                              //size: 23.3,
                                            ),
                                          ),
                                          SizedBox(width: 8.0),
                                          Text(itemCount1.toString(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption),
                                          SizedBox(width: 8.0),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                itemCount1++;
                                              });
                                            },
                                            child: Icon(
                                              Icons.add,
                                              color: kMainColor,
                                              size: 20.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      ListTile(
                        leading: Image.asset(
                          'images/Food images/6.png',
                          scale: 3,
                        ),
                        title: Text(AppLocalizations.of(context).pizza,
                            style: Theme.of(context)
                                .textTheme
                                .headline2
                                .copyWith(
                                    fontSize: 15, fontWeight: FontWeight.w600)),
                        subtitle: Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'images/ic_veg.png',
                                height: 16.0,
                                width: 16.7,
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              Text('\$ 9.00',
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(fontSize: 15)),
                              SizedBox(
                                width: 8.0,
                              ),
                              widget.isBooking
                                  ? SizedBox.shrink()
                                  : InkWell(
                                      onTap: () {
                                        showModalBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            return Container(
                                                height: 280,
                                                child: BottomSheetWidget());
                                          },
                                        );
                                      },
                                      child: Text(
                                        AppLocalizations.of(context).customize,
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption
                                            .copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: kMainColor),
                                      ),
                                    ),
                            ],
                          ),
                        ),
                        trailing: widget.isBooking
                            ? SizedBox.shrink()
                            : itemCount1 == 0
                                ? Container(
                                    height: 33.0,
                                    child: FlatButton(
                                      child: Text(
                                        AppLocalizations.of(context).add,
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption
                                            .copyWith(
                                                color: kMainColor,
                                                fontWeight: FontWeight.bold),
                                      ),
                                      textTheme: ButtonTextTheme.accent,
                                      onPressed: () {
                                        setState(() {
                                          itemCount1++;
                                          itemAdded = true;
                                        });
                                      },
                                    ),
                                  )
                                : FittedBox(
                                    child: Container(
                                      height: 33.0,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 12.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: kMainColor),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      child: Row(
                                        children: <Widget>[
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                itemCount1--;
                                              });
                                            },
                                            child: Icon(
                                              Icons.remove,
                                              color: kMainColor,
                                              size: 20.0,
                                              //size: 23.3,
                                            ),
                                          ),
                                          SizedBox(width: 8.0),
                                          Text(itemCount1.toString(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption),
                                          SizedBox(width: 8.0),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                itemCount1++;
                                              });
                                            },
                                            child: Icon(
                                              Icons.add,
                                              color: kMainColor,
                                              size: 20.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      ListTile(
                        leading: Image.asset(
                          'images/Food images/3.png',
                          scale: 3,
                        ),
                        title: Text(AppLocalizations.of(context).frankie,
                            style: Theme.of(context)
                                .textTheme
                                .headline2
                                .copyWith(
                                    fontSize: 15, fontWeight: FontWeight.w600)),
                        subtitle: Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'images/ic_veg.png',
                                height: 16.0,
                                width: 16.7,
                              ),

                              SizedBox(
                                width: 8.0,
                              ),
                              Text('\$ 4.00',
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(fontSize: 15)),
                              SizedBox(
                                width: 8.0,
                              ),
                              // InkWell(
                              //   onTap: () {
                              //     showModalBottomSheet(
                              //       context: context,
                              //       builder: (context) {
                              //         return Container(
                              //             height: 280,
                              //             child: BottomSheetWidget());
                              //       },
                              //     );
                              //   },
                              //   child: Text(
                              //     AppLocalizations.of(context).customize,
                              //     style: Theme.of(context)
                              //         .textTheme
                              //         .caption
                              //         .copyWith(
                              //             fontWeight: FontWeight.bold,
                              //             color: kMainColor),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        trailing: widget.isBooking
                            ? SizedBox.shrink()
                            : itemCount1 == 0
                                ? Container(
                                    height: 33.0,
                                    child: FlatButton(
                                      child: Text(
                                        AppLocalizations.of(context).add,
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption
                                            .copyWith(
                                                color: kMainColor,
                                                fontWeight: FontWeight.bold),
                                      ),
                                      textTheme: ButtonTextTheme.accent,
                                      onPressed: () {
                                        setState(() {
                                          itemCount1++;
                                          itemAdded = true;
                                        });
                                      },
                                    ),
                                  )
                                : FittedBox(
                                    child: Container(
                                      height: 33.0,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 12.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: kMainColor),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      child: Row(
                                        children: <Widget>[
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                itemCount1--;
                                              });
                                            },
                                            child: Icon(
                                              Icons.remove,
                                              color: kMainColor,
                                              size: 20.0,
                                              //size: 23.3,
                                            ),
                                          ),
                                          SizedBox(width: 8.0),
                                          Text(itemCount1.toString(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption),
                                          SizedBox(width: 8.0),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                itemCount1++;
                                              });
                                            },
                                            child: Icon(
                                              Icons.add,
                                              color: kMainColor,
                                              size: 20.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      ListTile(
                        leading: Image.asset(
                          'images/Food images/5.png',
                          scale: 3,
                        ),
                        title: Text(AppLocalizations.of(context).burger,
                            style: Theme.of(context)
                                .textTheme
                                .headline2
                                .copyWith(
                                    fontSize: 15, fontWeight: FontWeight.w600)),
                        subtitle: Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'images/ic_veg.png',
                                height: 16.0,
                                width: 16.7,
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              Text('\$ 7.00',
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(fontSize: 15)),
                              SizedBox(
                                width: 8.0,
                              ),
                              widget.isBooking
                                  ? SizedBox.shrink()
                                  : InkWell(
                                      onTap: () {
                                        showModalBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            return Container(
                                                height: 280,
                                                child: BottomSheetWidget());
                                          },
                                        );
                                      },
                                      child: Text(
                                        AppLocalizations.of(context).customize,
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption
                                            .copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: kMainColor),
                                      ),
                                    ),
                            ],
                          ),
                        ),
                        trailing: widget.isBooking
                            ? SizedBox.shrink()
                            : itemCount1 == 0
                                ? Container(
                                    height: 33.0,
                                    child: FlatButton(
                                      child: Text(
                                        AppLocalizations.of(context).add,
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption
                                            .copyWith(
                                                color: kMainColor,
                                                fontWeight: FontWeight.bold),
                                      ),
                                      textTheme: ButtonTextTheme.accent,
                                      onPressed: () {
                                        setState(() {
                                          itemCount1++;
                                          itemAdded = true;
                                        });
                                      },
                                    ),
                                  )
                                : FittedBox(
                                    child: Container(
                                      height: 33.0,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 12.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: kMainColor),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      child: Row(
                                        children: <Widget>[
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                itemCount1--;
                                              });
                                            },
                                            child: Icon(
                                              Icons.remove,
                                              color: kMainColor,
                                              size: 20.0,
                                              //size: 23.3,
                                            ),
                                          ),
                                          SizedBox(width: 8.0),
                                          Text(itemCount1.toString(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption),
                                          SizedBox(width: 8.0),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                itemCount1++;
                                              });
                                            },
                                            child: Icon(
                                              Icons.add,
                                              color: kMainColor,
                                              size: 20.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      ListTile(
                        leading: Image.asset(
                          'images/Food images/6.png',
                          scale: 3,
                        ),
                        title: Text(AppLocalizations.of(context).pizza,
                            style: Theme.of(context)
                                .textTheme
                                .headline2
                                .copyWith(
                                    fontSize: 15, fontWeight: FontWeight.w600)),
                        subtitle: Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'images/ic_veg.png',
                                height: 16.0,
                                width: 16.7,
                              ),

                              SizedBox(
                                width: 8.0,
                              ),
                              Text('\$ 9.00',
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(fontSize: 15)),
                              SizedBox(
                                width: 8.0,
                              ),
                              // InkWell(
                              //   onTap: () {
                              //     showModalBottomSheet(
                              //       context: context,
                              //       builder: (context) {
                              //         return Container(
                              //             height: 280,
                              //             child: BottomSheetWidget());
                              //       },
                              //     );
                              //   },
                              //   child: Text(
                              //     AppLocalizations.of(context).customize,
                              //     style: Theme.of(context)
                              //         .textTheme
                              //         .caption
                              //         .copyWith(
                              //             fontWeight: FontWeight.bold,
                              //             color: kMainColor),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        trailing: widget.isBooking
                            ? SizedBox.shrink()
                            : itemCount1 == 0
                                ? Container(
                                    height: 33.0,
                                    child: FlatButton(
                                      child: Text(
                                        AppLocalizations.of(context).add,
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption
                                            .copyWith(
                                                color: kMainColor,
                                                fontWeight: FontWeight.bold),
                                      ),
                                      textTheme: ButtonTextTheme.accent,
                                      onPressed: () {
                                        setState(() {
                                          itemCount1++;
                                          itemAdded = true;
                                        });
                                      },
                                    ),
                                  )
                                : FittedBox(
                                    child: Container(
                                      height: 33.0,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 12.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: kMainColor),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      child: Row(
                                        children: <Widget>[
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                itemCount1--;
                                              });
                                            },
                                            child: Icon(
                                              Icons.remove,
                                              color: kMainColor,
                                              size: 20.0,
                                              //size: 23.3,
                                            ),
                                          ),
                                          SizedBox(width: 8.0),
                                          Text(itemCount1.toString(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption),
                                          SizedBox(width: 8.0),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                itemCount1++;
                                              });
                                            },
                                            child: Icon(
                                              Icons.add,
                                              color: kMainColor,
                                              size: 20.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      ListTile(
                        leading: Image.asset(
                          'images/Food images/1.png',
                          scale: 3,
                        ),
                        title: Text(AppLocalizations.of(context).csandwich,
                            style: Theme.of(context)
                                .textTheme
                                .headline2
                                .copyWith(
                                    fontSize: 15, fontWeight: FontWeight.w600)),
                        subtitle: Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'images/ic_veg.png',
                                height: 16.0,
                                width: 16.7,
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              Text('\$ 7.00',
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(fontSize: 15)),
                              SizedBox(
                                width: 8.0,
                              ),
                              widget.isBooking
                                  ? SizedBox.shrink()
                                  : InkWell(
                                      onTap: () {
                                        showModalBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            return Container(
                                                height: 280,
                                                child: BottomSheetWidget());
                                          },
                                        );
                                      },
                                      child: Text(
                                        AppLocalizations.of(context).customize,
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption
                                            .copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: kMainColor),
                                      ),
                                    ),
                            ],
                          ),
                        ),
                        trailing: widget.isBooking
                            ? SizedBox.shrink()
                            : itemCount1 == 0
                                ? Container(
                                    height: 33.0,
                                    child: FlatButton(
                                      child: Text(
                                        AppLocalizations.of(context).add,
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption
                                            .copyWith(
                                                color: kMainColor,
                                                fontWeight: FontWeight.bold),
                                      ),
                                      textTheme: ButtonTextTheme.accent,
                                      onPressed: () {
                                        setState(() {
                                          itemCount1++;
                                          itemAdded = true;
                                        });
                                      },
                                    ),
                                  )
                                : FittedBox(
                                    child: Container(
                                      height: 33.0,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 12.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: kMainColor),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      child: Row(
                                        children: <Widget>[
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                itemCount1--;
                                              });
                                            },
                                            child: Icon(
                                              Icons.remove,
                                              color: kMainColor,
                                              size: 20.0,
                                              //size: 23.3,
                                            ),
                                          ),
                                          SizedBox(width: 8.0),
                                          Text(itemCount1.toString(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption),
                                          SizedBox(width: 8.0),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                itemCount1++;
                                              });
                                            },
                                            child: Icon(
                                              Icons.add,
                                              color: kMainColor,
                                              size: 20.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      ListTile(
                        leading: Image.asset(
                          'images/Food images/2.png',
                          scale: 3,
                        ),
                        title: Text(AppLocalizations.of(context).sandwich,
                            style: Theme.of(context)
                                .textTheme
                                .headline2
                                .copyWith(
                                    fontSize: 15, fontWeight: FontWeight.w600)),
                        subtitle: Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'images/ic_veg.png',
                                height: 16.0,
                                width: 16.7,
                              ),

                              SizedBox(
                                width: 8.0,
                              ),
                              Text('\$ 5.00',
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(fontSize: 15)),
                              SizedBox(
                                width: 8.0,
                              ),
                              // InkWell(
                              //   onTap: () {
                              //     showModalBottomSheet(
                              //       context: context,
                              //       builder: (context) {
                              //         return Container(
                              //             height: 280,
                              //             child: BottomSheetWidget());
                              //       },
                              //     );
                              //   },
                              //   child: Text(
                              //     AppLocalizations.of(context).customize,
                              //     style: Theme.of(context)
                              //         .textTheme
                              //         .caption
                              //         .copyWith(
                              //             fontWeight: FontWeight.bold,
                              //             color: kMainColor),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        trailing: widget.isBooking
                            ? SizedBox.shrink()
                            : itemCount1 == 0
                                ? Container(
                                    height: 33.0,
                                    child: FlatButton(
                                      child: Text(
                                        AppLocalizations.of(context).add,
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption
                                            .copyWith(
                                                color: kMainColor,
                                                fontWeight: FontWeight.bold),
                                      ),
                                      textTheme: ButtonTextTheme.accent,
                                      onPressed: () {
                                        setState(() {
                                          itemCount1++;
                                          itemAdded = true;
                                        });
                                      },
                                    ),
                                  )
                                : FittedBox(
                                    child: Container(
                                      height: 33.0,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 12.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: kMainColor),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      child: Row(
                                        children: <Widget>[
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                itemCount1--;
                                              });
                                            },
                                            child: Icon(
                                              Icons.remove,
                                              color: kMainColor,
                                              size: 20.0,
                                              //size: 23.3,
                                            ),
                                          ),
                                          SizedBox(width: 8.0),
                                          Text(itemCount1.toString(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption),
                                          SizedBox(width: 8.0),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                itemCount1++;
                                              });
                                            },
                                            child: Icon(
                                              Icons.add,
                                              color: kMainColor,
                                              size: 20.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      // Container(
                      //   padding: EdgeInsets.symmetric(
                      //       vertical: 20.0, horizontal: 16.0),
                      //   color: Theme.of(context).cardColor,
                      //   child: Text(
                      //     AppLocalizations.of(context).nonVeg.toUpperCase(),
                      //     style: Theme.of(context).textTheme.caption.copyWith(
                      //         color: kDisabledColor,
                      //         fontWeight: FontWeight.bold,
                      //         letterSpacing: 0.67),
                      //   ),
                      // ),
                      ListTile(
                        leading: Image.asset(
                          'images/Food images/4.png',
                          scale: 3,
                        ),
                        title: Text(AppLocalizations.of(context).chicken,
                            style: Theme.of(context)
                                .textTheme
                                .headline2
                                .copyWith(
                                    fontSize: 15, fontWeight: FontWeight.w600)),
                        subtitle: Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'images/ic_nonveg.png',
                                height: 16.0,
                                width: 16.7,
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              Text('\$ 4.50',
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(fontSize: 15)),
                              SizedBox(
                                width: 8.0,
                              ),
                              widget.isBooking
                                  ? SizedBox.shrink()
                                  : InkWell(
                                      onTap: () {
                                        showModalBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            return Container(
                                                height: 280,
                                                child: BottomSheetWidget());
                                          },
                                        );
                                      },
                                      child: Text(
                                        AppLocalizations.of(context).customize,
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption
                                            .copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: kMainColor),
                                      ),
                                    ),
                            ],
                          ),
                        ),
                        trailing: widget.isBooking
                            ? SizedBox.shrink()
                            : widget.isBooking
                                ? SizedBox.shrink()
                                : itemCount2 == 0
                                    ? Container(
                                        height: 33.0,
                                        child: FlatButton(
                                          child: Text(
                                            AppLocalizations.of(context).add,
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption
                                                .copyWith(
                                                    color: kMainColor,
                                                    fontWeight:
                                                        FontWeight.bold),
                                          ),
                                          textTheme: ButtonTextTheme.accent,
                                          onPressed: () {
                                            setState(() {
                                              itemCount2++;
                                              itemAdded = true;
                                            });
                                          },
                                        ),
                                      )
                                    : FittedBox(
                                        child: Container(
                                          height: 33.0,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 12.0),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: kMainColor),
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    itemCount2--;
                                                  });
                                                },
                                                child: Icon(
                                                  Icons.remove,
                                                  color: kMainColor,
                                                  size: 20.0,
                                                  //size: 23.3,
                                                ),
                                              ),
                                              SizedBox(width: 8.0),
                                              Text(itemCount2.toString(),
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption),
                                              SizedBox(width: 8.0),
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    itemCount2++;
                                                  });
                                                },
                                                child: Icon(
                                                  Icons.add,
                                                  color: kMainColor,
                                                  size: 20.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),
          ),
          if (itemAdded)
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'images/icons/ic_cart wt.png',
                      height: 19.0,
                      width: 18.3,
                    ),
                    SizedBox(width: 20.7),
                    Text(
                      'Items: 3 | \$ 21.00',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          .copyWith(color: Colors.white),
                    ),
                    Spacer(),
                    FlatButton(
                      color: Colors.white,
                      onPressed: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return Container(
                                color: Color(0xfff8f9fd), child: Bottom());
                          },
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          AppLocalizations.of(context).viewCart,
                          style: Theme.of(context).textTheme.caption.copyWith(
                              color: kMainColor, fontWeight: FontWeight.bold),
                        ),
                      ),
                      textTheme: ButtonTextTheme.accent,
                      disabledColor: Colors.white,
                    ),
                  ],
                ),
                color: kMainColor,
                height: 60.0,
              ),
            )
          else
            SizedBox.shrink(),
          widget.isBooking
              ? Align(
                  alignment: Alignment.bottomCenter,
                  child: BottomBar(
                    onTap: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return Container(
                            child: BottomWidget(),
                          );
                        },
                      );
                    },
                    text: "Book A Table",
                  ),
                )
              : SizedBox.shrink()
        ],
      ),
    );
  }
}

class BottomSheetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 100.7,
          color: Theme.of(context).cardColor,
          padding: EdgeInsets.all(15.0),
          child: ListTile(
            title: Text(AppLocalizations.of(context).sandwich,
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(fontSize: 15, fontWeight: FontWeight.w500)),
            subtitle: Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Image.asset(
                    'images/ic_veg.png',
                    height: 16.0,
                    width: 16.7,
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  Text('\$ 5.00',
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(fontSize: 15)),
                ],
              ),
            ),
            trailing: FlatButton(
              color: Theme.of(context).scaffoldBackgroundColor,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                AppLocalizations.of(context).add,
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(color: kMainColor, fontWeight: FontWeight.bold),
              ),
              textTheme: ButtonTextTheme.accent,
              disabledColor: Colors.white,
            ),
          ),
        ),
        CheckboxGroup(
          labelStyle:
              Theme.of(context).textTheme.caption.copyWith(fontSize: 16.7),
          labels: list,
          itemBuilder: (Checkbox checkBox, Text title, int i) {
            return Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ListTile(
                  leading: checkBox,
                  title: Text(
                    list[i],
                    style: Theme.of(context).textTheme.caption.copyWith(
                          fontSize: 16.7,
                        ),
                  ),
                  trailing: Text(
                    list1[i],
                    style: Theme.of(context)
                        .textTheme
                        .caption
                        .copyWith(fontSize: 16.7),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
