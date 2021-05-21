import 'package:flutter/material.dart';
import 'package:uihure/Components/bottom_bar.dart';

import 'package:uihure/Locale/locales.dart';
import 'package:uihure/Routes/routes.dart';
import 'package:uihure/Themes/colors.dart';
import 'package:uihure/HomeOrderAccount/Home/UI/Stores/stores.dart';

class TabAbsen extends StatefulWidget {
  @override
  _TabAbsenState createState() => _TabAbsenState();
}

class _TabAbsenState extends State<TabAbsen> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StoresPage("Table Booking", true),
                  ));
            },
            child: Container(
              padding: EdgeInsets.all(12.0),
              color: Theme.of(context).cardColor,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset("assets/images/alarm.png", scale: 3),
                SizedBox(width: 8),
                Expanded(
                  child: Text("CLOCK IN",
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(fontSize: 11)),
                ),
              ]),
            ),
          ),
        ),
        SizedBox(width: 10.0),
        Expanded(
          child: InkWell(
            onTap: () {
              // showModalBottomSheet(
              //   isScrollControlled: true,
              //   context: context,
              //   builder: (context) {
              //     return Container(
              //       child: BottomWidget(),
              //     );
              //   },
              // );
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StoresPage("Table Booking", true),
                  ));
            },
            child: Container(
              padding: EdgeInsets.all(12.0),
              color: Theme.of(context).cardColor,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset("assets/images/alarm.png", scale: 3),
                SizedBox(width: 8),
                Text("CLOCK OUT",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 11)),
              ]),
            ),
          ),
        ),
      ],
    );
  }
}
