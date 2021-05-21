

import 'package:uihure/HomeHure/Notification/notification.dart';

import 'package:flutter/material.dart';
import 'package:uihure/Locale/locales.dart';

class NotificationListPage extends StatefulWidget {
  @override
  _NotificationListPageState createState() => _NotificationListPageState();
}

class _NotificationListPageState extends State<NotificationListPage> {
  // initialize global widget
 

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar:  AppBar(
        title: Text(AppLocalizations.of(context).notificationBarText,
            style: Theme.of(context).textTheme.bodyText1),
        centerTitle: true,
      ),
        body: ListView(
          padding: EdgeInsets.fromLTRB(24, 24, 24, 16),
          children: [
            Container(
              child: Text('Notification Screen', style: TextStyle(
                  fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500
              )),
            ),
            Container(
              margin: EdgeInsets.only(top: 24),
              child: Row(
                children: [
                  Flexible(
                      flex:5,
                      child: Container(
                        child: Text('Notification screen used to show notification data', style: TextStyle(
                            fontSize: 15, color: Colors.black,letterSpacing: 0.5
                        )),
                      )
                  ),
                  Flexible(
                      flex: 2,
                      child: Container(
                          alignment: Alignment.center,
                          child: Icon(Icons.notifications, size: 50, color: Colors.black))
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 48),
              child: Text('Screen List', style: TextStyle(
                  fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500
              )),
            ),
            
          ],
        )
    );
  }
}
