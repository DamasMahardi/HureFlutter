import 'dart:math';
import 'package:uihure/config/constant.dart';
import 'package:flutter/material.dart';

class GlobalWidget{
  Random _random = Random();

  // create random color for polylines
  Color _getColor() {
    return Color.fromARGB(
        255, _random.nextInt(255), _random.nextInt(255), _random.nextInt(255));
  }

  List<IconData> _iconList = [
    Icons.star_rate,
    Icons.code,
    Icons.adb,
    Icons.android,
    Icons.select_all,
    Icons.eco,
    Icons.label_important,
    Icons.album,
    Icons.scatter_plot,
    Icons.memory,
    Icons.audiotrack,
    Icons.miscellaneous_services,
    Icons.whatshot
  ];

  Widget globalAppBar(){
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.black, //change your color here
      ),
      elevation: 0,
      backgroundColor: Colors.white,
      brightness: Brightness.light,
      centerTitle: true,
      title: Image.asset('assets/images/logo_horizontal.png', height: 24),
      bottom: PreferredSize(
          child: Container(
            color: Colors.grey[100],
            height: 1.0,
          ),
          preferredSize: Size.fromHeight(1.0)),
    );
  }

  Widget screenTabList({BuildContext context, int id, String title, IconData icon, String desc, int total, StatefulWidget page}){
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Container(
        margin: EdgeInsets.only(top:16, bottom: 16),
        child: Row(
          crossAxisAlignment: (desc==null || total==null)?CrossAxisAlignment.center:CrossAxisAlignment.start,
          children: [
            Container(
                width: 20,
                margin: EdgeInsets.only(top: (desc==null)?0:18),
                child: Text(id.toString())
            ),
            SizedBox(width: 24),
            Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                elevation: 2,
                color: Colors.white,
                child: Container(
                  width: 48,
                  height: 48,
                  child: Icon(icon, color: _getColor()),
                )
            ),
            SizedBox(width: 24),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w400
                    )),
                    SizedBox(height: 4),
                    (desc==null)?Wrap():Text(desc, style: TextStyle(
                        fontSize: 12, color: Colors.grey[700]
                    )),
                    (desc==null)?Wrap():SizedBox(height: 4),
                    (total==null)?Wrap():Text(total.toString()+' Screen', style: TextStyle(
                        fontSize: 12, color: Colors.grey[700]
                    )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget screenDetailList({BuildContext context, String title, StatefulWidget page}){
    Color _color = _getColor();
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        child: Card(
          elevation: 0.5,
          child: Container(
            margin: EdgeInsets.all(18),
            child: Row(
              children: [
                Icon(_iconList[_random.nextInt(_iconList.length)], color: _color, size: 26),
                SizedBox(width: 24),
                Expanded(
                  child: Text(title, style: TextStyle(
                      fontSize: 16, color: BLACK55, fontWeight: FontWeight.w500
                  )),
                ),
                Icon(Icons.chevron_right, size: 30, color: _color),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget createDetailWidget({String title, String desc}){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text(title, style: TextStyle(
              fontSize: 18, color: BLACK21, fontWeight: FontWeight.w500
          )),
        ),
        Container(
          margin: EdgeInsets.only(top: 8),
          child: Container(
            child: Text(desc, style: TextStyle(
                fontSize: 15, color: BLACK77,letterSpacing: 0.5
            )),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 24, bottom: 8),
          child: Text('Example', style: TextStyle(
              fontSize: 18, color: BLACK21, fontWeight: FontWeight.w500
          )),
        ),
      ],
    );
  }

  Widget createDefaultLabel(context){
    return Container(
      padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
      decoration: BoxDecoration(
          color: SOFT_BLUE,
          borderRadius: BorderRadius.circular(2)
      ),
      child: Row(
        children: [
          Text('Default', style: TextStyle(
              color: Colors.white, fontSize: 13
          )),
          SizedBox(
            width: 4,
          ),
          Icon(Icons.done, color: Colors.white, size: 11)
        ],
      ),
    );
  }

  Widget createRatingBar({double rating=5, double size=24}){
    if(rating < 0){
      rating = 0;
    } else if(rating>5){
      rating = 5;
    }

    bool _absolute = false;
    int _fullStar = 0;
    int _emptyStar = 0;

    if(rating == 0 || rating == 1 || rating == 2 || rating == 3 || rating == 4 || rating == 5){
      _absolute = true;
    } else {
      double _dec = (rating - int.parse(rating.toString().substring(0,1)));
      if(_dec > 0 && _dec < 1){
        if(_dec >= 0.25 && _dec <= 0.75){
          _absolute = false;
        } else {
          _absolute = true;
          if(_dec < 0.25){
            _emptyStar = 1;
          } else if(_dec > 0.75){
            _fullStar = 1;
          }
        }
      }
    }
    return Row(
      children: [
        for(int i=1;i<=rating+_fullStar;i++) Icon(Icons.star, color: Colors.yellow[700], size: size),
        !_absolute?Icon(Icons.star_half, color: Colors.yellow[700], size: size):SizedBox.shrink(),
        for(int i=1;i<=(5-rating+_emptyStar);i++) Icon(Icons.star_border, color: Colors.yellow[700], size: size),
      ],
    );
  }

  Widget customNotifIcon({int count=0, Color notifColor=Colors.grey, Color labelColor=Colors.pinkAccent, double notifSize=24, double labelSize=14, String position='right'}) {
    double posLeft;
    double posRight = 0;
    if(position == 'left'){
      posLeft = 0;
      posRight = null;
    }
    return Stack(
      children: <Widget>[
        Icon(Icons.notifications, color: notifColor, size: notifSize),
        Positioned(
          left: posLeft,
          right: posRight,
          child: Container(
            padding: EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: labelColor,
              borderRadius: BorderRadius.circular(labelSize),
            ),
            constraints: BoxConstraints(
              minWidth: labelSize,
              minHeight: labelSize,
            ),
            child: Center(
              child: Text(
                count.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        )
      ],
    );
  }
}