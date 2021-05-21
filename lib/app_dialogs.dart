import 'package:flutter/material.dart';
import 'package:uihure/app_theme.dart';
import 'package:uihure/flavor.dart';

class AppDialogs {
  static void hideLoading(GlobalKey<State> statekey) {
    Navigator.of(statekey.currentContext, rootNavigator: true).pop();
  }

  static void showConfirm(BuildContext context, String title,
      {@required Function onYes, Function onCancel}) {
    showDialog(
      context: context,
      builder: (childContext) {
        return AlertDialog(
          title: Text("Confirm"),
          content: Text(title),
          actions: [
            FlatButton(
              child: Text("Cancel"),
              onPressed: onCancel ?? () => Navigator.of(context).pop(),
            ),
            FlatButton(
                child: Text("Yes"),
                onPressed: () {
                  Navigator.of(context).pop();

                  if (onYes != null) {
                    onYes();
                  }
                })
          ],
        );
      },
    );
  }

  static void showInfo(BuildContext context, String title, String content) {
    showDialog(
      context: context,
      builder: (childContext) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            FlatButton(
              child: Text("Ok"),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  static void showLoading(
      BuildContext context, GlobalKey<State> statekey) async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return SimpleDialog(
              key: statekey,
              backgroundColor: Colors.white,
              children: [
                Center(
                    child: Column(children: [
                  CircularProgressIndicator(backgroundColor: Colors.white),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Please Wait....")
                ]))
              ]);
        });
  }

  static void showSnackBar(GlobalKey<ScaffoldState> scaffoldKey, String text) {
    scaffoldKey.currentState.showSnackBar(
      SnackBar(
        backgroundColor: AppTheme.orange,
        duration: Duration(seconds: flavor == FlavorEnum.DEV ? 30 : 10),
        content: Text(
          text ?? 'Error',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  static void snackBar(
    BuildContext context,
    String text, {
    int duration = 2,
    IconData iconData = Icons.info_outline,
  }) {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        duration: Duration(seconds: duration),
        content: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey[600],
            borderRadius: BorderRadius.all(Radius.circular(5)),
            // border: Border.all(
            //   width: 1,
            //   color: Colors.orange[700],
            // ),
          ),
          child: Row(
            children: [
              Icon(iconData, color: Colors.white),
              SizedBox(width: 10),
              Text(
                text,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
