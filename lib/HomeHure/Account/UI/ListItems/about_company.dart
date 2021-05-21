import 'package:flutter/material.dart';
import 'package:uihure/Components/bottom_bar.dart';
import 'package:uihure/Locale/locales.dart';
import 'package:uihure/Routes/routes.dart';
import 'package:uihure/Themes/colors.dart';
import 'package:uihure/Themes/style.dart';

class Address {
  final String icon;
  final String addressType;
  final String address;

  Address(this.icon, this.addressType, this.address);
}

class AboutCompany extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).cardColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
          title: Text(
            AppLocalizations.of(context).accountContactText,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        body: SavedAddresses());
  }
}

class SavedAddresses extends StatefulWidget {
  @override
  _SavedAddressesState createState() => _SavedAddressesState();
}

class _SavedAddressesState extends State<SavedAddresses> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<Address> listOfAddressTypes = [
      Address(
          'images/address/ic_company.png',
          AppLocalizations.of(context).accountCompanyText,
          'PT. IDOOH BERSAMA INDONESIA'),
      Address('images/address/ic_email.png',
          AppLocalizations.of(context).accountemailText, 'info@idooh.co.id'),
      Address('images/address/ic_call.png',
          AppLocalizations.of(context).accountCallText, '(021)22651109'),
      Address(
          'images/address/ic_web.png',
          AppLocalizations.of(context).accounWebText,
          'https://www.idooh.co.id'),
      Address(
          'images/address/ic_other.png',
          AppLocalizations.of(context).accouAddressText,
          'Sentral Senayan II, Gedung, Jl.Asia Afrika No.8'),
    ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: <Widget>[
                      SizedBox(
                        height: 6.7,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 6.0),
                        color: Theme.of(context).scaffoldBackgroundColor,
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundColor: Theme.of(context).cardColor,
                            child: Image.asset(
                              listOfAddressTypes[index].icon,
                              scale: 2.7,
                            ),
                          ),
                          title: Padding(
                            padding: EdgeInsets.only(left: 8.0, bottom: 8.0),
                            child: Text(
                              listOfAddressTypes[index].addressType,
                              style: listTitleTextStyle,
                            ),
                          ),
                          subtitle: Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              listOfAddressTypes[index].address,
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  .copyWith(fontSize: 11.7),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                })),
        // BottomBar(
        //   color: Theme.of(context).scaffoldBackgroundColor,
        //   text: '+ ' + AppLocalizations.of(context).addNew,
        //   textColor: kMainColor,
        //   onTap: () {
        //     Navigator.pushNamed(context, PageRoutes.locationPage);
        //   },
        // ),
      ],
    );
  }
}
