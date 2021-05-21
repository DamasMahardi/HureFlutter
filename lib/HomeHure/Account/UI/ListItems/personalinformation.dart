import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:uihure/Components/bottom_bar.dart';
import 'package:uihure/Components/entry_field.dart';
import 'package:uihure/Components/textfield.dart';
import 'package:uihure/Themes/colors.dart';
import 'package:uihure/Auth/login_navigator.dart';

import 'package:uihure/Locale/locales.dart';
import 'package:uihure/model/employee/EmployeeInformationDto.dart';
import 'package:uihure/service/identity/identity_service.dart';

class PersonalInformationPage extends StatefulWidget {

 PersonalInformationPage({Key key, this.number}) : super(key: key);
  static const String id = 'personalinformation';
  final String number;



  //PersonalInformationPage({this.number});

  @override
  _PersonalInformationPageState createState() => _PersonalInformationPageState();
}

class _PersonalInformationPageState extends State<PersonalInformationPage> {
  var index;
Future<EmployeeInformationDto> futureEmployee;

  EmployeeInformationDto employeeInformationDto = EmployeeInformationDto();

  IdentityService identityService = IdentityService();

  //List<EmployeeInformationDto> employeeData = List();

  @override
  void initState() { 
  //  var data=  identityService.getEmployeeId();
  super.initState();
  futureEmployee= identityService.getEmployeeId();
    
    
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
            Navigator.pop(context);
          },
        ),
        title: Text(AppLocalizations.of(context).personalInformationText,
            style: Theme.of(context).textTheme.bodyText1),
      ),
      body: SingleChildScrollView(
        child: FutureBuilder<EmployeeInformationDto>(
          future: futureEmployee,
          builder: (context, snapshoot){
            if(snapshoot.hasData){
              return Container(
            height: MediaQuery.of(context).size.height -
                AppBar().preferredSize.height -
                MediaQuery.of(context).padding.top,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: 48.0),
                  color: Theme.of(context).cardColor,
                  child: Image(
                    image: AssetImage("images/user.png"),
                    width: 100.0,
                    height: 100.0,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 8.0, top: 16.0),
                          child: Text(
                            AppLocalizations.of(context).detailInformationText,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        // Padding(
                        //   padding: EdgeInsets.only(left: 8.0, bottom: 16.0),
                        //   child: Text(
                        //     AppLocalizations.of(context).yourWords,
                        //     style: Theme.of(context).textTheme.caption,
                        //   ),
                        // ),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  //Text(this.employeeInformationDto.firstName),
                                  
                                  inputField(
                                    AppLocalizations.of(context)
                                        .personalUsernameText,
                                    snapshoot.data.userName,
                                    'images/icons/ic_name.png',
                                  ),
                                  inputField(
                                    AppLocalizations.of(context)
                                        .personalFirstnameText,
                                    snapshoot.data.firstName,
                                    'images/icons/ic_namencomplete.png',
                                  ),
                                  inputField(
                                    AppLocalizations.of(context)
                                        .personalMiddlenameText,
                                    snapshoot.data.middleName,
                                    'images/icons/ic_namencomplete.png',
                                  ),
                                  inputField(
                                    AppLocalizations.of(context)
                                        .personalLastnameText,
                                    snapshoot.data.lastName,
                                    'images/icons/ic_namencomplete.png',
                                  ),
                                  inputField(
                                    AppLocalizations.of(context)
                                        .personalBirthPlaceText,
                                    snapshoot.data.birthPlace,
                                    'images/icons/ic_birthplace.png',
                                  ),
                                  inputField(
                                      AppLocalizations.of(context)
                                          .personalBirthDateText,
                                      snapshoot.data.birthDate,
                                      'images/icons/ic_date.png'),
                                  inputField(
                                    AppLocalizations.of(context)
                                        .personalGenderText,
                                    snapshoot.data.gender.toString(),
                                    //snapshoot.data.gender==1 snapshoot.data.gender("laki -laki ")? snapshoot.data.gender("Perempuan"),
                                    'images/icons/ic_gender.png',
                                  ),
                                  inputField(
                                    AppLocalizations.of(context)
                                        .personalReligionText,
                                    snapshoot.data.religion.toString(),
                                    'images/icons/ic_religion.png',
                                  ),
                                  inputField(
                                    AppLocalizations.of(context)
                                        .personalMaritalText,
                                    snapshoot.data.marital.toString(),
                                    'images/icons/ic_marital.png',
                                  ),
                                  inputField(
                                    AppLocalizations.of(context)
                                        .personalEmailText,
                                    snapshoot.data.email,
                                    'images/icons/ic_mail.png',
                                  ),
                                  inputField(
                                    AppLocalizations.of(context)
                                        .personalPhoneText,
                                    snapshoot.data.phone,
                                    'images/icons/ic_phone.png',
                                  ),
                                  inputField(
                                    AppLocalizations.of(context)
                                        .personalCardNumberText,
                                    snapshoot.data.userId,
                                    'images/icons/ic_card.png',
                                  ),
                                  inputField(
                                    AppLocalizations.of(context)
                                        .personalFamilyCardNumberText,
                                    snapshoot.data.familyCardNumber,
                                    'images/icons/ic_card.png',
                                  ),
                                  inputField(
                                    AppLocalizations.of(context)
                                        .personalBankNumberText,
                                    snapshoot.data.bankId,
                                    'images/icons/ic_account_bank.png',
                                  ),
                                  inputField(
                                    AppLocalizations.of(context)
                                        .personalAccountBankText,
                                    snapshoot.data.bankAccount,
                                    'images/icons/ic_account_bank.png',
                                  ),
                                  biginputField(
                                    AppLocalizations.of(context)
                                        .personalAddressText,
                                    snapshoot.data.address,
                                    'images/icons/ic_adress.png',
                                  ),
                                  biginputField(
                                      AppLocalizations.of(context)
                                          .personalDomicileText,
                                      snapshoot.data.domicileAddress,
                                      'images/icons/ic_adress.png'),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Spacer(),
                // BottomBar(
                //   text: AppLocalizations.of(context).submit,
                //   onTap: () {
                //     /*............*/
                //   },
                // ),
                Container(
                  margin: EdgeInsets.all(15),
                  height: 40,
                  child: RaisedButton(
                    color: dangerColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppLocalizations.of(context).changePasswordText,
                          style: Theme.of(context).textTheme.button,
                        ),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    onPressed: () {
                      showDialog(
                          context: context,
                          //barrierDismissible: false,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(AppLocalizations.of(context)
                                  .changePasswordText),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  inputField(
                                    AppLocalizations.of(context)
                                        .currentPasswordText,
                                    'Current Password',
                                    'images/icons/password.png',
                                  ),
                                  inputField(
                                    AppLocalizations.of(context).newPasswordText,
                                    'New Password',
                                    'images/icons/password.png',
                                  ),
                                  inputField(
                                    AppLocalizations.of(context)
                                        .confimPasswordText,
                                    'Confirm new password',
                                    'images/icons/password.png',
                                  ),
                                ],
                              ),
                              actions: <Widget>[
                                FlatButton(
                                  child: Text(AppLocalizations.of(context)
                                      .cancelPasswordText),
                                  textColor: kMainColor,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(color: kTransparentColor)),
                                  onPressed: () => Navigator.pop(context),
                                ),
                                FlatButton(
                                    child: Text(AppLocalizations.of(context)
                                        .savePasswordText),
                                    shape: RoundedRectangleBorder(
                                        side:
                                            BorderSide(color: kTransparentColor)),
                                    textColor: kMainColor,
                                    onPressed: () {
                                      Phoenix.rebirth(context);
                                    })
                              ],
                            );
                          });
                    },
                  ),
                ),
              ],
            ),
          );
            }else if(snapshoot.hasError){
               var snapshot;
              return Text("${snapshot.error}");
            }
              return Center(child: CircularProgressIndicator());
            
              
            },
          

                  
        ),
      ),
    );
  }

  Container inputField(String title, String hint, String img) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 20,
                child: Image(
                  image: AssetImage(
                    img,
                  ),
                  color: kMainColor,
                ),
              ),
              SizedBox(
                width: 13,
              ),
              Text(title,
                  style: TextStyle(color: Colors.grey[600], fontSize: 12))
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 33),
            child: Column(
              children: [
                smallTextFormField(null, hint),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Container biginputField(String title, String hint, String img) {
  return Container(
    child: Column(
      children: [
        Row(
          children: [
            Container(
              height: 20,
              child: Image(
                image: AssetImage(
                  img,
                ),
                color: kMainColor,
              ),
            ),
            SizedBox(
              width: 13,
            ),
            Text(title, style: TextStyle(color: Colors.grey[600], fontSize: 12))
          ],
        ),
        Container(
          padding: EdgeInsets.only(left: 33),
          child: Column(
            children: [
              bigTextFormField(null, hint),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
