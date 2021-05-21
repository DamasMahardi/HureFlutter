import 'dart:async';

import 'package:uihure/Auth/login_navigator.dart';
import 'package:uihure/Locale/locales.dart';

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:uihure/Locale/locales.dart';
import 'package:uihure/model/notification_model.dart';
import 'package:uihure/reusable/shimmer_loading.dart';

class Notification1Page extends StatefulWidget {
  @override
  _Notification1PageState createState() => _Notification1PageState();
}

class _Notification1PageState extends State<Notification1Page> {
  Color _color1 = Color(0xFF0181cc);

  final _shimmerLoading = ShimmerLoading();

  bool _loading = true;
  Timer _timerDummy;

  List<Notification1Model> _notificationData1 = List();

  void _getData() {
    // this timer function is just for demo, so after 2 second, the shimmer loading will disappear and show the content
    _timerDummy = Timer(Duration(seconds: 2), () {
      setState(() {
        _loading = false;
      });
    });
    _notificationData1 = [
      Notification1Model(
        id: 1,
        message: 'Damas Mahardi baru saja bergabung',
        notifDate: '13 hari yang lalu',
      ),
      Notification1Model(
        id: 2,
        message: 'Damas Mahardi baru saja bergabung',
        notifDate: '13 hari yang lalu',
      ),
      Notification1Model(
        id: 3,
        message: 'Damas Mahardi baru saja bergabung',
        notifDate: '13 hari yang lalu',
      ),
      Notification1Model(
        id: 4,
        message: 'Damas Mahardi baru saja bergabung',
        notifDate: '13 hari yang lalu',
      ),
      Notification1Model(
        id: 5,
        message: 'Damas Mahardi baru saja bergabung',
        notifDate: '13 hari yang lalu',
      ),
      Notification1Model(
        id: 6,
        message: 'Damas Mahardi baru saja bergabung',
        notifDate: '13 hari yang lalu',
      ),
      Notification1Model(
        id: 7,
        message: 'Damas Mahardi baru saja bergabung',
        notifDate: '13 hari yang lalu',
      ),
      Notification1Model(
        id: 8,
        message: 'Damas Mahardi baru saja bergabung',
        notifDate: '13 hari yang lalu',
      ),
      Notification1Model(
        id: 9,
        message: 'Damas Mahardi baru saja bergabung',
        notifDate: '13 hari yang lalu',
      ),
      Notification1Model(
        id: 10,
        message: 'Damas Mahardi baru saja bergabung',
        notifDate: '13 hari yang lalu',
      ),
    ];
  }

  @override
  void initState() {
    _getData();
    super.initState();
  }

  @override
  void dispose() {
    _timerDummy?.cancel();
    super.dispose();
  }

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
              Navigator.pushNamed(context, LoginRoutes.homeMenu);
            },
          ),
          title: Text(
            AppLocalizations.of(context).notificationBarText,
            style: Theme.of(context).textTheme.caption.copyWith(fontSize: 20),
          ),
        ),
        body: RefreshIndicator(
          onRefresh: refreshData,
          child: (_loading == true)
              ? _shimmerLoading.buildShimmerContent()
              : ListView(
                  children: List.generate(_notificationData1.length, (index) {
                  return _buildNotif(index);
                })),
        ));
  }

  Future refreshData() async {
    setState(() {
      _notificationData1.clear();
      _loading = true;
      _getData();
    });
  }

  Widget _buildNotif(index) {
    return Container(
        color: Colors.white,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Html(
                  data: _notificationData1[index].message,
                  defaultTextStyle: TextStyle(fontSize: 16),
                ),
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Text(
                    _notificationData1[index].notifDate,
                    style: TextStyle(fontSize: 13, color: Colors.grey[500]),
                    textAlign: TextAlign.left,
                  )),
              Container(color: Colors.grey[300], height: 1),
            ]));
  }
}
