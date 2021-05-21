import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uihure/Locale/locales.dart';
import 'package:uihure/Themes/colors.dart';

class Review {
  final String title;
  final double rating;
  final String date;
  final String content;

  Review(this.title, this.rating, this.date, this.content);
}

class ReviewPage extends StatefulWidget {
  @override
  _ReviewPageState createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  @override
  Widget build(BuildContext context) {
    var appLocalization = AppLocalizations.of(context);
    final List<Review> listOfReviews = [
      Review(
          appLocalization.name1, 4.0, '5 April, 20', appLocalization.content1),
      Review(
          appLocalization.name2, 5.0, '23 Feb, 20', appLocalization.content2),
      Review(
          appLocalization.name3, 4.0, '11 April, 20', appLocalization.content1),
      Review(
          appLocalization.name4, 5.0, '23 Feb, 20', appLocalization.content2),
      Review(
          appLocalization.name5, 4.0, '9 April, 20', appLocalization.content1),
      Review(
          appLocalization.name2, 5.0, '23 Feb, 20', appLocalization.content2),
      Review(
          appLocalization.name1, 4.0, '4 April, 20', appLocalization.content1),
      Review(
          appLocalization.name3, 5.0, '23 Feb, 20', appLocalization.content2),
    ];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0),
          child: AppBar(
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
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(AppLocalizations.of(context).store,
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                        color: Theme.of(context).secondaryHeaderColor)),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
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
                            .copyWith(color: Color(0xff7ac81e))),
                    SizedBox(width: 8.0),
                    Text('148 reviews',
                        style: Theme.of(context).textTheme.overline),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 8.0,
                  color: Theme.of(context).cardColor,
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: listOfReviews.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    listOfReviews[index].title,
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontSize: 15.0),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color(0xff7ac81e),
                          size: 13,
                        ),
                        SizedBox(width: 8.0),
                        Text(listOfReviews[index].rating.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                .copyWith(color: Color(0xff7ac81e))),
                        Spacer(),
                        Text(
                          listOfReviews[index].date,
                          style: Theme.of(context).textTheme.caption.copyWith(
                              fontSize: 11.7, color: Color(0xffd7d7d7)),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    listOfReviews[index].content,
                    textAlign: TextAlign.justify,
                    style: Theme.of(context)
                        .textTheme
                        .caption
                        .copyWith(color: Color(0xff6a6c74)),
                  )
                ],
              ),
            );
          }),
    );
  }
}
