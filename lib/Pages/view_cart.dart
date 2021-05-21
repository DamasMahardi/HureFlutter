import 'package:flutter/material.dart';
import 'package:uihure/Components/bottom_bar.dart';
import 'package:uihure/Locale/locales.dart';
import 'package:uihure/Routes/routes.dart';
import 'package:uihure/Themes/colors.dart';

List<DropdownMenuItem<String>> listDrop = [];
int selected;
int selected1;

void loadData() {
  listDrop = [];
  listDrop.add(DropdownMenuItem(
    child: Text('1 kg'),
    value: 'A',
  ));
  listDrop.add(DropdownMenuItem(
    child: Text('500 g'),
    value: 'B',
  ));
  listDrop.add(DropdownMenuItem(
    child: Text('250 g'),
    value: 'C',
  ));
}

class ViewCart extends StatefulWidget {
  @override
  _ViewCartState createState() => _ViewCartState();
}

class _ViewCartState extends State<ViewCart> {
  int _itemCount = 1;
  int _itemCount1 = 1;
  int _itemCount2 = 1;

  @override
  Widget build(BuildContext context) {
    loadData();
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
        title: Text(AppLocalizations.of(context).confirm,
            style: Theme.of(context).textTheme.bodyText1),
      ),
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20.0),
                color: Theme.of(context).cardColor,
                child: Text(AppLocalizations.of(context).store.toUpperCase(),
                    style: Theme.of(context).textTheme.headline6.copyWith(
                        color: Color(0xff616161),
                        letterSpacing: 0.67,
                        fontWeight: FontWeight.bold)),
              ),
              cartOrderItemListTile(
                  'images/ic_veg.png',
                  context,
                  AppLocalizations.of(context).sandwich,
                  '5.00',
                  _itemCount,
                  () => setState(() => _itemCount--),
                  () => setState(() => _itemCount++)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 36.0,
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
              Divider(
                color: Theme.of(context).cardColor,
                thickness: 1.0,
              ),
              cartOrderItemListTile(
                  'images/ic_nonveg.png',
                  context,
                  AppLocalizations.of(context).chicken,
                  '7.50',
                  _itemCount1,
                  () => setState(() => _itemCount1--),
                  () => setState(() => _itemCount1++)),
              Divider(
                color: Theme.of(context).cardColor,
                thickness: 1.0,
              ),
              cartOrderItemListTile(
                  'images/ic_veg.png',
                  context,
                  AppLocalizations.of(context).juice,
                  '4.50',
                  _itemCount2,
                  () => setState(() => _itemCount2--),
                  () => setState(() => _itemCount2++)),
              Divider(
                color: Theme.of(context).cardColor,
                thickness: 6.7,
              ),
              Container(
                height: 53.3,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                color: Theme.of(context).scaffoldBackgroundColor,
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'images/ic_promocode.png',
                      height: 16.0,
                      width: 16.7,
                    ),
                    SizedBox(
                      width: 17.3,
                    ),
                    Text(AppLocalizations.of(context).instruction,
                        style: Theme.of(context).textTheme.caption.copyWith(
                            fontSize: 11.7, color: Color(0xffb2b2b2))),
                    Spacer(),
                    Text(AppLocalizations.of(context).apply,
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            .copyWith(color: kMainColor))
                  ],
                ),
              ),
              Divider(
                color: Theme.of(context).cardColor,
                thickness: 6.7,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                child:
                    Text(AppLocalizations.of(context).paymentInfo.toUpperCase(),
                        style: Theme.of(context).textTheme.headline6.copyWith(
                              color: kDisabledColor,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.67,
                            )),
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
              Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
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
              Divider(
                color: Theme.of(context).cardColor,
                thickness: 1.0,
              ),
              Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
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
              Divider(
                color: Theme.of(context).cardColor,
                thickness: 1.0,
              ),
              Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        AppLocalizations.of(context).amount,
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$ 21.00',
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ]),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 132.0,
                color: Theme.of(context).cardColor,
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 13.0, bottom: 13.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              color: Color(0xffc4c8c1),
                              size: 13.3,
                            ),
                            SizedBox(
                              width: 11.0,
                            ),
                            Text(AppLocalizations.of(context).deliver,
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    .copyWith(
                                        color: kDisabledColor,
                                        fontWeight: FontWeight.bold)),
                            Text(AppLocalizations.of(context).homeText,
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    .copyWith(
                                        color: kMainColor,
                                        fontWeight: FontWeight.bold)),
                            Spacer(),
                          ],
                        ),
                        SizedBox(
                          height: 13.0,
                        ),
                        Text(
                            '1024, Central Residency Hemilton Park, New York, USA',
                            style: Theme.of(context).textTheme.caption.copyWith(
                                fontSize: 11.7, color: Color(0xffb7b7b7)))
                      ],
                    ),
                  ),
                ),
                BottomBar(
                  text: AppLocalizations.of(context).pay + " \$ 21.00",
                  onTap: () =>
                      Navigator.pushNamed(context, PageRoutes.paymentMethod),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column cartOrderItemListTile(
    String image,
    BuildContext context,
    String title,
    String price,
    int itemCount,
    Function onPressedMinus,
    Function onPressedPlus,
  ) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset(
                    image,
                    scale: 2.5,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    title,
                    style: Theme.of(context).textTheme.subtitle2.copyWith(
                        color: Theme.of(context).secondaryHeaderColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  Container(
                    height: 33.0,
                    //width: 76.7,
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: kMainColor),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Row(
                      children: <Widget>[
                        InkWell(
                          onTap: (itemCount > 0) ? onPressedMinus : null,
                          child: Icon(
                            Icons.remove,
                            color: kMainColor,
                            size: 20.0,
                            //size: 23.3,
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Text(itemCount.toString(),
                            style: Theme.of(context).textTheme.caption),
                        SizedBox(width: 8.0),
                        InkWell(
                          onTap: onPressedPlus,
                          child: Icon(
                            Icons.add,
                            color: kMainColor,
                            size: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 44,
                    child: Center(
                      child: Text(
                        '\$ $price',
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ),
                  ),
                ]),
          ),
        )
      ],
    );
  }
}
