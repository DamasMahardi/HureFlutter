
import 'package:flutter/material.dart';
import 'package:uihure/Components/list_tile.dart';
import 'package:uihure/Locale/locales.dart';
import 'package:uihure/Routes/routes.dart';
import 'package:uihure/Themes/colors.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (
      Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            flexibleSpace: Container(
              padding: EdgeInsets.only(left: 60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    AppLocalizations.of(context).selectPayment,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    AppLocalizations.of(context).amount + '\$ 21.00',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(color: kDisabledColor),
                  ),
                ],
              ),
            ),
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
            // title: Container(
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: <Widget>[
            //       SizedBox(
            //         height: 20,
            //       ),
            //       Text(
            //         AppLocalizations.of(context).selectPayment,
            //         style: Theme.of(context).textTheme.bodyText1,
            //       ),
            //       SizedBox(
            //         height: 8.0,
            //       ),
            //       Text(
            //         AppLocalizations.of(context).amount + '\$ 21.00',
            //         style: Theme.of(context)
            //             .textTheme
            //             .headline6
            //             .copyWith(color: kDisabledColor),
            //       ),
            //     ],
            //   ),
            // ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 6.7,
            ),
            ListTile(
              onTap: () => Navigator.pushNamed(context, PageRoutes.orderPlaced),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
              leading: (
                Image.asset(
                  'images/payment/payment_cod.png',
                  height: 37,
                )
                
              ),
              title: Text(
                AppLocalizations.of(context).wallet,
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(fontWeight: FontWeight.bold, letterSpacing: 0.07),
              ),
              trailing: Text(
                '\$ 258.50',
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(color: kDisabledColor),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              color: Theme.of(context).cardColor,
              child: Text(AppLocalizations.of(context).card.toUpperCase(),
                  style: Theme.of(context).textTheme.caption.copyWith(
                      color: kDisabledColor,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.67)),
            ),
            BuildListTile(
              onTap: () => Navigator.pushNamed(context, PageRoutes.orderPlaced),
              image: 'images/payment/payment_card.png',
              text: AppLocalizations.of(context).credit,
            ),
            BuildListTile(
              onTap: () => Navigator.pushNamed(context, PageRoutes.orderPlaced),
              image: 'images/payment/payment_card.png',
              text: AppLocalizations.of(context).debit,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              color: Theme.of(context).cardColor,
              child: Text(
                AppLocalizations.of(context).cash.toUpperCase(),
                style: Theme.of(context).textTheme.caption.copyWith(
                    color: kDisabledColor,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.67),
              ),
            ),
            BuildListTile(
              image: 'images/payment/payment_cod.png',
              text: AppLocalizations.of(context).cod,
              onTap: () => Navigator.pushNamed(context, PageRoutes.orderPlaced),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              color: Theme.of(context).cardColor,
              child: Text(
                AppLocalizations.of(context).other.toUpperCase(),
                style: Theme.of(context).textTheme.caption.copyWith(
                    color: kDisabledColor,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.67),
              ),
            ),
            BuildListTile(
              onTap: () => Navigator.pushNamed(context, PageRoutes.orderPlaced),
              image: 'images/payment/payment_paypal.png',
              text: AppLocalizations.of(context).paypal,
            ),
            BuildListTile(
              onTap: () => Navigator.pushNamed(context, PageRoutes.orderPlaced),
              image: 'images/payment/payment_payu.png',
              text: AppLocalizations.of(context).payU,
            ),
            BuildListTile(
              onTap: () => Navigator.pushNamed(context, PageRoutes.orderPlaced),
              image: 'images/payment/payment_stripe.png',
              text: AppLocalizations.of(context).stripe,
            ),
            Expanded(
              child: Container(
                color: Theme.of(context).cardColor,
              ),
            )
          ],
        ),
      )
     
    );
  }
}
