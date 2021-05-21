
import 'package:flutter/material.dart';
import 'package:uihure/Components/bottom_bar.dart';
import 'package:uihure/Routes/routes.dart';
import 'package:uihure/Themes/colors.dart';

class Method {
  final String image;
  final String title;
  final String price;

  Method(this.image, this.title, this.price);
}

class Reach {
  final String title;
  Reach(this.title);
}

class Bottom extends StatefulWidget {
  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int methodIndex = 0;
  int timeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Method> method = [
      Method('images/ic_takeaway.png', "Take Away", '+\$1.50'),
      // Method('images/ic_dinein.png', "Dine in", '+\$0.00'),
      Method('images/ic_delivery.png', "Delivery", '+\$3.50'),
      // Method('images/ic_takeaway.png', "Take Away", '+\$1.50'),
      // Method('images/ic_dinein.png', "Dine in", '+\$0.00'),
    ];
    final List<Reach> reach = [
      Reach("10 min"),
      Reach("20 min"),
      Reach("30 min"),
      Reach("40 min"),
    ];

    return Container(
      height: 380,
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        SizedBox(height: 30),
        Row(children: [
          SizedBox(
            width: 20,
          ),
          Text(
            "Choose ordering method",
            style: Theme.of(context)
                .textTheme
                .caption
                .copyWith(fontWeight: FontWeight.bold, fontSize: 14.0),
          )
        ]),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
          
              Container(
                height: 120.0,
                margin: EdgeInsets.only(left: 12),
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: method.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            methodIndex = index;
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: methodIndex == index
                                      ? kMainColor
                                      : Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              color: methodIndex == index
                                  ? Color(0xffFFEEC8)
                                  : Colors.white,
                            ),
                            width: 90,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(method[index].image, height: 48),
                                SizedBox(height: 10),
                                Text(
                                  method[index].title,
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10.0),
                                ),
                                SizedBox(height: 7),
                                Text(
                                  method[index].price,
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10.0,
                                          color:
                                              Theme.of(context).primaryColor),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
             
          ],
        ),
        SizedBox(height: 25),
        Row(children: [
          SizedBox(width: 20),
          Text(
            "Reaching in",
            style: Theme.of(context)
                .textTheme
                .caption
                .copyWith(fontSize: 14.0, fontWeight: FontWeight.bold),
          )
        ]),
        SizedBox(height: 20),
        
          Container(
            height: 38.0,
            margin: EdgeInsets.only(left: 12),
            child: ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: reach.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        timeIndex = index;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Container(
                          height: 35,
                          width: 82,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: timeIndex == index
                                    ? kMainColor
                                    : Colors.white),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: timeIndex == index
                                ? Color(0xffFFEEC8)
                                : Colors.white,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            reach[index].title,
                            style: Theme.of(context).textTheme.caption.copyWith(
                                fontWeight: FontWeight.bold, fontSize: 10.0),
                          )),
                    ),
                  );
                }),
          ),
        
        Spacer(),
        BottomBar(
          text: 'Continue',
          onTap: () => Navigator.pushNamed(context, PageRoutes.viewCart),
        )
      ]),
    );
  }
}
