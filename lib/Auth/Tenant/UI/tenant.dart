import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uihure/Auth/MobileNumber/UI/mobile_input.dart';
import 'package:uihure/Auth/login/UI/login_page.dart';
//import 'package:uihure/Auth/Tenant/UI/tenant_input.dart';
import 'package:uihure/Auth/login_navigator.dart';
import 'package:uihure/Components/textfield.dart';

import 'package:uihure/HomeHure/Account/UI/account_page.dart';
import 'package:uihure/Locale/locales.dart';
import 'package:uihure/Themes/colors.dart';
import 'package:uihure/model/tenant/tenant_response.dart';
import 'package:uihure/network/Apiservice.dart';
import 'package:uihure/network/endpoint.dart';
import 'package:uihure/reusable/global_function.dart';
import 'package:uihure/reusable/global_widget.dart';
import 'package:uihure/service/SharedPreferences.dart';
import 'package:uihure/service/identity_service.dart';
import 'package:uihure/network/endpoint.dart';
import 'package:uihure/service/identity/identity_service.dart';


//first page that takes phone number as input for verification
//
final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

class Tenant extends StatefulWidget {
  Tenant({Key key}) : super(key: key);
  

  @override
  _TenantState createState() => _TenantState();
}

class _TenantState extends State<Tenant> {



  bool _isLoading = false;
  TenantResponse tenantResponse = TenantResponse();
  //TenantService tenantService = TenantService();
  //HttpService http = HttpService();

  TextEditingController _controllerTenantName = TextEditingController();

  bool _isFieldNameTenantValid;
  String name;

  //final tenantResponse = TenantResponse();

  bool isLoading = false;
  SharedPrefs shareprefences = SharedPrefs();
 // IdentityService identityService = IdentityService();
  Endpoint http = Endpoint();

  // Future getTenant(String name) async {
  //   Response response = Response();
  //   try {
  //     isLoading = true;

  //     response =
  //         await http.getRequest("/api/abp/multi-tenancy/tenants/by-name/$name");

  //     isLoading = false;

  //     if (response.statusCode == 200) {
  //       setState(() {
  //         tenantResponse = TenantResponse.fromJson(response.data);
  //         shareprefences.saveTenantPref(_controllerTenantName.text);
  //       });
  //     } else {
  //       print("There is some problem status code not 200");
  //     }
  //   } on Exception catch (e) {
  //     isLoading = false;
  //     print(e);
  //   }
  // }

  @override
  void initState() {
    _isLoading = false;

     //identityService.getTenant(name);
    http = Endpoint();

    super.initState();
  }

  @override
  void dispose() {
    _controllerTenantName.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
      body: SingleChildScrollView(
        //used for scrolling when keyboard pops up
        child: Container(
          color: Theme.of(context).cardColor,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Image.asset(
                "assets/images/logo.png",
                scale: 4,
                width: 200,
                height: 200, //delivoo logo
              ),

              SizedBox(
                height: 20,
              ),
              Text(
                AppLocalizations.of(context).companyText,
                style: Theme.of(context).textTheme.headline6.copyWith(
                    fontSize: 22,
                    color: Theme.of(context).secondaryHeaderColor),
              ),
              SizedBox(
                height: 50,
              ),

              //TenantInput(),
              new Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(color: Color(0xffF9F9FD)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextField(
                      controller: _controllerTenantName,
                      keyboardType: TextInputType.text,
                    
                      decoration: InputDecoration(
                        hintText: "Company Code",
                        //labelText: "Company Code",
                        errorText: _isFieldNameTenantValid == null ||
                                _isFieldNameTenantValid
                            ? null
                            : "Company Code is required",
                      ),
                      onChanged: (value) {
                        bool isFieldValid = value.trim().isNotEmpty;
                        if (isFieldValid != _isFieldNameTenantValid) {
                          setState(
                              () => _isFieldNameTenantValid = isFieldValid);
                        }
                      },
                    ),
                    SizedBox(),
                    Container(
                      height: 40,
                      child: RaisedButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                AppLocalizations.of(context).bottonTenantdText,
                                style: Theme.of(context).textTheme.button,
                              ),
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          onPressed: () {
                            if (_isFieldNameTenantValid == null ||
                                !_isFieldNameTenantValid) {
                              _scaffoldState.currentState.showSnackBar(
                                SnackBar(
                                  content: Text("Please fill all field"),
                                ),
                              );
                            }

                            String name = _controllerTenantName.text.toString();

                            // identityService.getTenant(name).then((tenant) {
                            //   setState(() => _isLoading = false);

                            //   // if (tenant.success=true && tenant.tenantId  !=null && tenant.name != null) {
                            //   //   Navigator.pushNamed(context, LoginRoutes.login);
                            //   // } else {
                            //   //   _scaffoldState.currentState
                            //   //       .showSnackBar(SnackBar(
                            //   //     content: Text("Submit data failed"),
                            //   //   ));
                            //   // }
                            // });
                          }),
                    ),
                    _isLoading
                        ? SingleChildScrollView(
                            child: Center(
                              child: CircularProgressIndicator(),
                            ),
                          )
                        : Container(),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      AppLocalizations.of(context).versionText,
                      style: Theme.of(context).textTheme.headline6.copyWith(
                          fontSize: 22,
                          color: Theme.of(context).secondaryHeaderColor),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 32.0,
                  color: Theme.of(context).cardColor,
                  child: Center(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Container inputFieldTenant(
  TextEditingController controller,
  String hint,
  String img,
) {
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
          ],
        ),
        Container(
          padding: EdgeInsets.only(left: 33),
          child: Column(
            children: [
              passwordTextFormField(null, hint, controller),
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
