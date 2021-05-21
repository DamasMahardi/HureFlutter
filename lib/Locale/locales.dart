import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'dart:async';
import 'arabic.dart';
import 'english.dart';
import 'french.dart';
import 'indonesian.dart';
import 'portuguese.dart';
import 'spanish.dart';

class AppLocalizations {

  
  final Locale locale;
  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'id': indonesian(),
    'en': english(),
    'ar': arabic(),
    'pt': portuguese(),
    'fr': french(),
    'es': spanish(),
  };

  String get tenantTextHint {
    return _localizedValues[locale.languageCode]['tenantTextHint'];
  }

  String get companyText {
    return _localizedValues[locale.languageCode]['companyText'];
  }

  String get signText {
    return _localizedValues[locale.languageCode]['signText'];
  }

  String get signTenantText {
    return _localizedValues[locale.languageCode]['signTenantText'];
  }

  String get userNameText {
    return _localizedValues[locale.languageCode]['userNameText'];
  }

  String get passwordText {
    return _localizedValues[locale.languageCode]['passwordText'];
  }

  String get tenantdText {
    return _localizedValues[locale.languageCode]['tenantdText'];
  }

   String get hurelogin {
    return _localizedValues[locale.languageCode]['hurelogin'];
  }

  String get bottonTenantdText {
    return _localizedValues[locale.languageCode]['bottonTenantdText'];
  }

  String get versionText {
    return _localizedValues[locale.languageCode]['versionText'];
  }

  String get forgotPasswordText {
    return _localizedValues[locale.languageCode]['forgotPasswordText'];
  }

  String get menuText {
    return _localizedValues[locale.languageCode]['menuText'];
  }

  String get chatText {
    return _localizedValues[locale.languageCode]['chatText'];
  }

  String get notificationText {
    return _localizedValues[locale.languageCode]['notificationText'];
  }

  String get accountText {
    return _localizedValues[locale.languageCode]['accountText'];
  }

  String get homeHureText1 {
    return _localizedValues[locale.languageCode]['homeHureText1'];
  }

  String get overtimeText {
    return _localizedValues[locale.languageCode]['overtimeText'];
  }

  String get leaveTrackerText {
    return _localizedValues[locale.languageCode]['leaveTrackerText'];
  }

  String get attendanceText {
    return _localizedValues[locale.languageCode]['attendanceText'];
  }

  String get thermoScanText {
    return _localizedValues[locale.languageCode]['thermoScanText'];
  }

  String get payrollText {
    return _localizedValues[locale.languageCode]['payrollText'];
  }

  String get coursesText {
    return _localizedValues[locale.languageCode]['coursesText'];
  }

  String get benefitText {
    return _localizedValues[locale.languageCode]['benefitText'];
  }

  String get announcementText {
    return _localizedValues[locale.languageCode]['announcementText'];
  }

  String get filetText {
    return _localizedValues[locale.languageCode]['filetText'];
  }

  String get nameCompanyText {
    return _localizedValues[locale.languageCode]['nameCompanyText'];
  }

  String get notPresentText {
    return _localizedValues[locale.languageCode]['notPresentText'];
  }

  String get employeLeaveText {
    return _localizedValues[locale.languageCode]['employeLeaveText'];
  }

  String get homeEmployeLeaveText {
    return _localizedValues[locale.languageCode]['homeEmployeLeaveText'];
  }

  String get homeEmployePresntText {
    return _localizedValues[locale.languageCode]['homeEmployePresntText'];
  }

  String get homeDetailText {
    return _localizedValues[locale.languageCode]['homeDetailText'];
  }

  String get nameEmployeeText {
    return _localizedValues[locale.languageCode]['nameEmployeeText'];
  }

  String get sayHomeText {
    return _localizedValues[locale.languageCode]['sayHomeText'];
  }

  String get jobEmployeeText {
    return _localizedValues[locale.languageCode]['jobEmployeeText'];
  }

  String get notificationBarText {
    return _localizedValues[locale.languageCode]['notificationBarText'];
  }
   String get attendanceBarText {
    return _localizedValues[locale.languageCode]['attendanceBarText'];
  }

  String get attendandaysudayText {
    return _localizedValues[locale.languageCode]['attendandaysudayText'];
  }

  String get attendanceModayBarText {
    return _localizedValues[locale.languageCode]['attendanceModayBarText'];
  }

  String get attendanceTuesdayBarText {
    return _localizedValues[locale.languageCode]['attendanceTuesdayBarText'];
  }
   String get attendancewednesdayBarText {
    return _localizedValues[locale.languageCode]['attendancewednesdayBarText'];
  }
  String get attendancethursdayBarText {
    return _localizedValues[locale.languageCode]['attendancethursdayBarText'];
  }
  String get attendanceFridayBarText {
    return _localizedValues[locale.languageCode]['attendanceFridayBarText'];
  }

   String get attendanceSaturdayBarText {
    return _localizedValues[locale.languageCode]['attendanceSaturdayBarText'];
  }
  


  String get accountpersonalInfomationtext {
    return _localizedValues[locale.languageCode]
        ['accountpersonalInfomationtext'];
  }

  String get accountContactText {
    return _localizedValues[locale.languageCode]['accountContactText'];
  }

  String get accountChangepasswordtText {
    return _localizedValues[locale.languageCode]['accountChangepasswordtText'];
  }

  String get accountSettingText {
    return _localizedValues[locale.languageCode]['accountSettingText'];
  }

  String get accountlogoutText {
    return _localizedValues[locale.languageCode]['accountlogoutText'];
  }

  String get searchEmloyeeText {
    return _localizedValues[locale.languageCode]['searchEmloyeeText'];
  }

  String get personalInformationText {
    return _localizedValues[locale.languageCode]['personalInformationText'];
  }
    String get myaccountText {
    return _localizedValues[locale.languageCode]['myaccountText'];
  }

  String get personalUsernameText {
    return _localizedValues[locale.languageCode]['personalUsernameText'];
  }

  String get personalFirstnameText {
    return _localizedValues[locale.languageCode]['personalFirstnameText'];
  }

  String get personalMiddlenameText {
    return _localizedValues[locale.languageCode]['personalMiddlenameText'];
  }

  String get personalLastnameText {
    return _localizedValues[locale.languageCode]['personalLastnameText'];
  }

  String get personalBirthPlaceText {
    return _localizedValues[locale.languageCode]['personalBirthPlaceText'];
  }

  String get personalBirthDateText {
    return _localizedValues[locale.languageCode]['personalBirthDateText'];
  }

  String get personalGenderText {
    return _localizedValues[locale.languageCode]['personalGenderText'];
  }

  String get personalReligionText {
    return _localizedValues[locale.languageCode]['personalReligionText'];
  }

  String get personalMaritalText {
    return _localizedValues[locale.languageCode]['personalMaritalText'];
  }

  String get personalEmailText {
    return _localizedValues[locale.languageCode]['personalEmailText'];
  }

  String get personalPhoneText {
    return _localizedValues[locale.languageCode]['personalPhoneText'];
  }

  String get personalCardNumberText {
    return _localizedValues[locale.languageCode]['personalCardNumberText'];
  }

  String get personalFamilyCardNumberText {
    return _localizedValues[locale.languageCode]
        ['personalFamilyCardNumberText'];
  }

  String get personalBankNumberText {
    return _localizedValues[locale.languageCode]['personalBankNumberText'];
  }

  String get personalAccountBankText {
    return _localizedValues[locale.languageCode]['personalAccountBankText'];
  }

  String get personalAddressText {
    return _localizedValues[locale.languageCode]['personalAddressText'];
  }

  String get personalDomicileText {
    return _localizedValues[locale.languageCode]['personalDomicileText'];
  }

  String get detailInformationText {
    return _localizedValues[locale.languageCode]['detailInformationText'];
  }

  String get accountCompanyText {
    return _localizedValues[locale.languageCode]['accountCompanyText'];
  }

  String get accountemailText {
    return _localizedValues[locale.languageCode]['accountemailText'];
  }

  String get accountCallText {
    return _localizedValues[locale.languageCode]['accountCallText'];
  }

  String get accounWebText {
    return _localizedValues[locale.languageCode]['accounWebText'];
  }

  String get accouAddressText {
    return _localizedValues[locale.languageCode]['accouAddressText'];
  }

  String get changePasswordText {
    return _localizedValues[locale.languageCode]['changePasswordText'];
  }

  String get currentPasswordText {
    return _localizedValues[locale.languageCode]['currentPasswordText'];
  }

  String get newPasswordText {
    return _localizedValues[locale.languageCode]['newPasswordText'];
  }

  String get confimPasswordText {
    return _localizedValues[locale.languageCode]['confimPasswordText'];
  }

  String get cancelPasswordText {
    return _localizedValues[locale.languageCode]['cancelPasswordText'];
  }

String get cancelLogoutText {
    return _localizedValues[locale.languageCode]['cancelLogoutText'];
  }
  String get savePasswordText {
    return _localizedValues[locale.languageCode]['savePasswordText'];
  }

  String get loginforgotTextPasswordText {
    return _localizedValues[locale.languageCode]['loginforgotTextPasswordText'];
  }

   String get logoutText {
    return _localizedValues[locale.languageCode]['logoutText'];
  }


  
   String get backbuttonhomeTitleText {
    return _localizedValues[locale.languageCode]['backbuttonhomeTitleText'];
  }
   String get backbuttonhomeContentText {
    return _localizedValues[locale.languageCode]['backbuttonhomeContentText'];
  }
   String get backbuttonhomeYesText {
    return _localizedValues[locale.languageCode]['backbuttonhomeYesText'];
  }
   String get backbuttonhomeNoText {
    return _localizedValues[locale.languageCode]['backbuttonhomeNoText'];
  }

  String get loginforgotPasswordText {
    return _localizedValues[locale.languageCode]['loginforgotPasswordText'];
  }

  

  String get submitForgotPasswordText {
    return _localizedValues[locale.languageCode]['submitForgotPasswordText'];
  }

  String get yesLogoutText {
    return _localizedValues[locale.languageCode]['yesLogoutText'];
  }
  String get clockinText {
    return _localizedValues[locale.languageCode]['clockinText'];
  }
  
  
  String get languageText {
    return _localizedValues[locale.languageCode]['languageText'];
  }

   String get attendanceWorkshiftText {
    return _localizedValues[locale.languageCode]['attendanceWorkshiftText'];
  }
  
   String get attendanceMontlyText {
    return _localizedValues[locale.languageCode]['attendanceMontlyText'];
  }
  
   String get attendanceTabText {
    return _localizedValues[locale.languageCode]['attendanceTabText'];
  }

    String get attendanceCodeText {
    return _localizedValues[locale.languageCode]['attendanceCodeText'];
  }

    String get attendanceEfectiveText {
    return _localizedValues[locale.languageCode]['attendanceEfectiveText'];
  }
    String get attendanceNameText {
    return _localizedValues[locale.languageCode]['attendanceNameText'];
  }

  String get attendanceTotalHourText {
    return _localizedValues[locale.languageCode]['attendanceTotalHourText'];
  }

  
  String get attendanceTimeOutTextattendanceEfectiveText {
    return _localizedValues[locale.languageCode]['attendanceEfectiveText'];
  }

  
    String get attendanceTimeinText {
    return _localizedValues[locale.languageCode]['attendanceTimeinText'];
  }
  
    String get attendanceBreakstartnText {
    return _localizedValues[locale.languageCode]['attendanceBreakstartnText'];
  }
   String get attendanceBreakendText {
    return _localizedValues[locale.languageCode]['attendanceBreakendText'];
  }

   String get attendanceTimeOutText {
    return _localizedValues[locale.languageCode]['attendanceTimeOutText'];
  }
  
  
   String get attendanceClockOutText {
    return _localizedValues[locale.languageCode]['attendanceClockOutText'];
  }
  



  //HURE
  String get tenantTextButton {
    return _localizedValues[locale.languageCode]['nameProfileText'];
  }

  String get vegetableText {
    return _localizedValues[locale.languageCode]['vegetableText'];
  }

  String get foodText {
    return _localizedValues[locale.languageCode]['foodText'];
  }

  String get youreAlmostin {
    return _localizedValues[locale.languageCode]['youreAlmostin'];
  }

  String get meatText {
    return _localizedValues[locale.languageCode]['meatText'];
  }

  String get medicineText {
    return _localizedValues[locale.languageCode]['medicineText'];
  }

  String get petText {
    return _localizedValues[locale.languageCode]['petText'];
  }

  String get customText {
    return _localizedValues[locale.languageCode]['customText'];
  }

  String get invalidNumber {
    return _localizedValues[locale.languageCode]['invalidNumber'];
  }

  String get networkError {
    return _localizedValues[locale.languageCode]['networkError'];
  }

  String get register {
    return _localizedValues[locale.languageCode]['register'];
  }

  String get invalidName {
    return _localizedValues[locale.languageCode]['invalidName'];
  }

  String get invalidEmail {
    return _localizedValues[locale.languageCode]['invalidEmail'];
  }

  String get invalidNameAndEmail {
    return _localizedValues[locale.languageCode]['invalidNameAndEmail'];
  }

  String get fullName {
    return _localizedValues[locale.languageCode]['fullName'];
  }

  String get emailAddress {
    return _localizedValues[locale.languageCode]['emailAddress'];
  }

  String get mobileNumber {
    return _localizedValues[locale.languageCode]['mobileNumber'];
  }

  String get verificationText {
    return _localizedValues[locale.languageCode]['verificationText'];
  }

  String get verification {
    return _localizedValues[locale.languageCode]['verification'];
  }

  String get checkNetwork {
    return _localizedValues[locale.languageCode]['checkNetwork'];
  }

  String get invalidOTP {
    return _localizedValues[locale.languageCode]['invalidOTP'];
  }

  String get enterVerification {
    return _localizedValues[locale.languageCode]['enterVerification'];
  }

  String get verificationCode {
    return _localizedValues[locale.languageCode]['verificationCode'];
  }

  String get resend {
    return _localizedValues[locale.languageCode]['resend'];
  }

  String get offlineText {
    return _localizedValues[locale.languageCode]['resend'];
  }

  String get onlineText {
    return _localizedValues[locale.languageCode]['resend'];
  }

  String get goOnline {
    return _localizedValues[locale.languageCode]['resend'];
  }

  String get goOffline {
    return _localizedValues[locale.languageCode]['resend'];
  }

  String get orders {
    return _localizedValues[locale.languageCode]['orders'];
  }

  String get ride {
    return _localizedValues[locale.languageCode]['ride'];
  }

  String get earnings {
    return _localizedValues[locale.languageCode]['earnings'];
  }

  String get location {
    return _localizedValues[locale.languageCode]['earnings'];
  }

  String get grant {
    return _localizedValues[locale.languageCode]['earnings'];
  }

  String get homeText1 {
    return _localizedValues[locale.languageCode]['homeText1'];
  }

  String get homeText2 {
    return _localizedValues[locale.languageCode]['homeText2'];
  }

  String get bodyText1 {
    return _localizedValues[locale.languageCode]['bodyText1'];
  }

  String get bodyText2 {
    return _localizedValues[locale.languageCode]['bodyText2'];
  }

  String get mobileText {
    return _localizedValues[locale.languageCode]['mobileText'];
  }

  String get continueText {
    return _localizedValues[locale.languageCode]['continueText'];
  }

  String get homeText {
    return _localizedValues[locale.languageCode]['homeText'];
  }

  String get money {
    return _localizedValues[locale.languageCode]['money'];
  }

  String get account {
    return _localizedValues[locale.languageCode]['account'];
  }

  String get orderText {
    return _localizedValues[locale.languageCode]['orderText'];
  }

  String get tnc {
    return _localizedValues[locale.languageCode]['tnc'];
  }

  String get support {
    return _localizedValues[locale.languageCode]['support'];
  }

  String get aboutUs {
    return _localizedValues[locale.languageCode]['aboutUs'];
  }

  String get login {
    return _localizedValues[locale.languageCode]['login'];
  }

  String get noLoginText {
    return _localizedValues[locale.languageCode]['noLoginText'];
  }

  String get logout {
    return _localizedValues[locale.languageCode]['logout'];
  }

  
  String get signoutText {
    return _localizedValues[locale.languageCode]['signoutText'];
  }

  String get loggingOut {
    return _localizedValues[locale.languageCode]['loggingOut'];
  }

  String get areYouSure {
    return _localizedValues[locale.languageCode]['areYouSure'];
  }

  String get yes {
    return _localizedValues[locale.languageCode]['yes'];
  }

  String get no {
    return _localizedValues[locale.languageCode]['no'];
  }

  String get aboutDelivoo {
    return _localizedValues[locale.languageCode]['aboutDelivoo'];
  }

  String get saved {
    return _localizedValues[locale.languageCode]['saved'];
  }

  String get booked {
    return _localizedValues[locale.languageCode]['booked'];
  }

  String get thankstb {
    return _localizedValues[locale.languageCode]['thankstb'];
  }

  String get savedText {
    return _localizedValues[locale.languageCode]['savedText'];
  }

  String get notLogin {
    return _localizedValues[locale.languageCode]['notLogin'];
  }

  String get loginText {
    return _localizedValues[locale.languageCode]['loginText'];
  }

  String get ourVision {
    return _localizedValues[locale.languageCode]['ourVision'];
  }

  String get rebook {
    return _localizedValues[locale.languageCode]['rebook'];
  }

  String get cancel {
    return _localizedValues[locale.languageCode]['cancel'];
  }

  String get companyPolicy {
    return _localizedValues[locale.languageCode]['companyPolicy'];
  }

  String get booking {
    return _localizedValues[locale.languageCode]['booking'];
  }

  String get pe {
    return _localizedValues[locale.languageCode]['pe'];
  }

  String get per {
    return _localizedValues[locale.languageCode]['per'];
  }

  String get pers {
    return _localizedValues[locale.languageCode]['pers'];
  }

  String get termsOfUse {
    return _localizedValues[locale.languageCode]['termsOfUse'];
  }

  String get perso {
    return _localizedValues[locale.languageCode]['perso'];
  }

  String get date {
    return _localizedValues[locale.languageCode]['date'];
  }

  String get da {
    return _localizedValues[locale.languageCode]['da'];
  }

  String get dat {
    return _localizedValues[locale.languageCode]['dat'];
  }

  String get datee {
    return _localizedValues[locale.languageCode]['datee'];
  }

  String get dateee {
    return _localizedValues[locale.languageCode]['dateee'];
  }

  String get dateeee {
    return _localizedValues[locale.languageCode]['dateeee'];
  }

  String get person {
    return _localizedValues[locale.languageCode]['person'];
  }

  String get select {
    return _localizedValues[locale.languageCode]['select'];
  }

  String get pastt {
    return _localizedValues[locale.languageCode]['pastt'];
  }

  String get upcomming {
    return _localizedValues[locale.languageCode]['upcomming'];
  }

  String get message {
    return _localizedValues[locale.languageCode]['message'];
  }

  String get tabletext {
    return _localizedValues[locale.languageCode]['tabletext'];
  }

  String get enterMessage {
    return _localizedValues[locale.languageCode]['enterMessage'];
  }

  String get orWrite {
    return _localizedValues[locale.languageCode]['orWrite'];
  }

  String get yourWords {
    return _localizedValues[locale.languageCode]['yourWords'];
  }

  String get online {
    return _localizedValues[locale.languageCode]['online'];
  }

  String get recent {
    return _localizedValues[locale.languageCode]['recent'];
  }

  String get vegetable {
    return _localizedValues[locale.languageCode]['vegetable'];
  }

  String get upload {
    return _localizedValues[locale.languageCode]['upload'];
  }

  String get updateInfo {
    return _localizedValues[locale.languageCode]['updateInfo'];
  }

  String get instruction {
    return _localizedValues[locale.languageCode]['instruction'];
  }

  String get cod {
    return _localizedValues[locale.languageCode]['cod'];
  }

  String get backToHome {
    return _localizedValues[locale.languageCode]['backToHome'];
  }

  String get viewEarnings {
    return _localizedValues[locale.languageCode]['viewEarnings'];
  }

  String get yourEarnings {
    return _localizedValues[locale.languageCode]['yourEarnings'];
  }

  String get youDrived {
    return _localizedValues[locale.languageCode]['youDrived'];
  }

  String get viewOrderInfo {
    return _localizedValues[locale.languageCode]['viewOrderInfo'];
  }

  String get delivered {
    return _localizedValues[locale.languageCode]['delivered'];
  }

  String get thankYou {
    return _localizedValues[locale.languageCode]['thankYou'];
  }

  String get newDeliveryTask {
    return _localizedValues[locale.languageCode]['newDeliveryTask'];
  }

  String get orderInfo {
    return _localizedValues[locale.languageCode]['orderInfo'];
  }

  String get close {
    return _localizedValues[locale.languageCode]['close'];
  }

  String get direction {
    return _localizedValues[locale.languageCode]['direction'];
  }

  String get store {
    return _localizedValues[locale.languageCode]['store'];
  }

  String get markPicked {
    return _localizedValues[locale.languageCode]['markPicked'];
  }

  String get markDelivered {
    return _localizedValues[locale.languageCode]['markDelivered'];
  }

  String get acceptDelivery {
    return _localizedValues[locale.languageCode]['acceptDelivery'];
  }

  String get address {
    return _localizedValues[locale.languageCode]['address'];
  }

  String get storeAddress {
    return _localizedValues[locale.languageCode]['storeAddress'];
  }

  String get search {
    return _localizedValues[locale.languageCode]['search'];
  }

  String get sandwich {
    return _localizedValues[locale.languageCode]['sandwich'];
  }

  String get chicken {
    return _localizedValues[locale.languageCode]['chicken'];
  }

  String get juice {
    return _localizedValues[locale.languageCode]['juice'];
  }

  String get cheese {
    return _localizedValues[locale.languageCode]['cheese'];
  }

  String get apply {
    return _localizedValues[locale.languageCode]['apply'];
  }

  String get add {
    return _localizedValues[locale.languageCode]['add'];
  }

  String get viewCart {
    return _localizedValues[locale.languageCode]['viewCart'];
  }

  String get placed {
    return _localizedValues[locale.languageCode]['placed'];
  }

  String get thanks {
    return _localizedValues[locale.languageCode]['thanks'];
  }

  String get confirm {
    return _localizedValues[locale.languageCode]['confirm'];
  }

  String get selectPayment {
    return _localizedValues[locale.languageCode]['selectPayment'];
  }

  String get amount {
    return _localizedValues[locale.languageCode]['amount'];
  }

  String get card {
    return _localizedValues[locale.languageCode]['card'];
  }

  String get credit {
    return _localizedValues[locale.languageCode]['credit'];
  }

  String get debit {
    return _localizedValues[locale.languageCode]['debit'];
  }

  String get cash {
    return _localizedValues[locale.languageCode]['cash'];
  }

  String get other {
    return _localizedValues[locale.languageCode]['other'];
  }

  String get paypal {
    return _localizedValues[locale.languageCode]['paypal'];
  }

  String get payU {
    return _localizedValues[locale.languageCode]['payU'];
  }

  String get stripe {
    return _localizedValues[locale.languageCode]['stripe'];
  }

  String get setLocation {
    return _localizedValues[locale.languageCode]['setLocation'];
  }

  String get enterLocation {
    return _localizedValues[locale.languageCode]['enterLocation'];
  }

  String get saveAddress {
    return _localizedValues[locale.languageCode]['saveAddress'];
  }

  String get addressLabel {
    return _localizedValues[locale.languageCode]['addressLabel'];
  }

  String get office {
    return _localizedValues[locale.languageCode]['office'];
  }

  String get addNew {
    return _localizedValues[locale.languageCode]['addNew'];
  }

  String get submit {
    return _localizedValues[locale.languageCode]['submit'];
  }

  String get change {
    return _localizedValues[locale.languageCode]['change'];
  }

  String get pay {
    return _localizedValues[locale.languageCode]['pay'];
  }

  String get deliver {
    return _localizedValues[locale.languageCode]['deliver'];
  }

  String get service {
    return _localizedValues[locale.languageCode]['service'];
  }

  String get sub {
    return _localizedValues[locale.languageCode]['sub'];
  }

  String get paymentInfo {
    return _localizedValues[locale.languageCode]['paymentInfo'];
  }

  String get pickup {
    return _localizedValues[locale.languageCode]['pickup'];
  }

  String get process {
    return _localizedValues[locale.languageCode]['process'];
  }

  String get custom {
    return _localizedValues[locale.languageCode]['custom'];
  }

  String get storeFound {
    return _localizedValues[locale.languageCode]['storeFound'];
  }

  String get send {
    return _localizedValues[locale.languageCode]['send'];
  }

  String get pickupText {
    return _localizedValues[locale.languageCode]['pickupText'];
  }

  String get pickupAddress {
    return _localizedValues[locale.languageCode]['pickupAddress'];
  }

  String get dropText {
    return _localizedValues[locale.languageCode]['dropText'];
  }

  String get drop {
    return _localizedValues[locale.languageCode]['drop'];
  }

  String get packageText {
    return _localizedValues[locale.languageCode]['packageText'];
  }

  String get package {
    return _localizedValues[locale.languageCode]['package'];
  }

  String get deliveryCharge {
    return _localizedValues[locale.languageCode]['deliveryCharge'];
  }

  String get done {
    return _localizedValues[locale.languageCode]['done'];
  }

  String get vegetables {
    return _localizedValues[locale.languageCode]['vegetables'];
  }

  String get fruits {
    return _localizedValues[locale.languageCode]['fruits'];
  }

  String get herbs {
    return _localizedValues[locale.languageCode]['herbs'];
  }

  String get dairy {
    return _localizedValues[locale.languageCode]['dairy'];
  }

  String get paperDocuments {
    return _localizedValues[locale.languageCode]['paperDocuments'];
  }

  String get flowersChocolates {
    return _localizedValues[locale.languageCode]['flowersChocolates'];
  }

  String get sports {
    return _localizedValues[locale.languageCode]['sports'];
  }

  String get clothes {
    return _localizedValues[locale.languageCode]['clothes'];
  }

  String get electronic {
    return _localizedValues[locale.languageCode]['electronic'];
  }

  String get household {
    return _localizedValues[locale.languageCode]['household'];
  }

  String get glass {
    return _localizedValues[locale.languageCode]['glass'];
  }

  String get or {
    return _localizedValues[locale.languageCode]['or'];
  }

  String get continueWith {
    return _localizedValues[locale.languageCode]['continueWith'];
  }

  String get textTenant {
    return _localizedValues[locale.languageCode]['textTenant'];
  }

  String get facebook {
    return _localizedValues[locale.languageCode]['facebook'];
  }

  String get google {
    return _localizedValues[locale.languageCode]['google'];
  }

  String get apple {
    return _localizedValues[locale.languageCode]['apple'];
  }

  String get wallet {
    return _localizedValues[locale.languageCode]['wallet'];
  }

  String get availableBalance {
    return _localizedValues[locale.languageCode]['availableBalance'];
  }

  String get addMoney {
    return _localizedValues[locale.languageCode]['addMoney'];
  }

  String get accountHolderName {
    return _localizedValues[locale.languageCode]['accountHolderName'];
  }

  String get bankName {
    return _localizedValues[locale.languageCode]['bankName'];
  }

  String get branchCode {
    return _localizedValues[locale.languageCode]['branchCode'];
  }

  String get accountNumber {
    return _localizedValues[locale.languageCode]['accountNumber'];
  }

  String get enterAmountToTransfer {
    return _localizedValues[locale.languageCode]['enterAmountToTransfer'];
  }

  String get bankInfo {
    return _localizedValues[locale.languageCode]['bankInfo'];
  }

  String get display {
    return _localizedValues[locale.languageCode]['display'];
  }

  String get darkMode {
    return _localizedValues[locale.languageCode]['darkMode'];
  }

  String get darkText {
    return _localizedValues[locale.languageCode]['darkText'];
  }

  String get selectLanguage {
    return _localizedValues[locale.languageCode]['language'];
  }

  String get name1 {
    return _localizedValues[locale.languageCode]['name1'];
  }

  String get name2 {
    return _localizedValues[locale.languageCode]['name2'];
  }

  String get name3 {
    return _localizedValues[locale.languageCode]['name3'];
  }

  String get name4 {
    return _localizedValues[locale.languageCode]['name4'];
  }

  String get name5 {
    return _localizedValues[locale.languageCode]['name5'];
  }

  String get content1 {
    return _localizedValues[locale.languageCode]['content1'];
  }

  String get content2 {
    return _localizedValues[locale.languageCode]['content2'];
  }

  String get past {
    return _localizedValues[locale.languageCode]['past'];
  }

  String get rate {
    return _localizedValues[locale.languageCode]['rate'];
  }

  String get deliv {
    return _localizedValues[locale.languageCode]['deliv'];
  }

  String get how {
    return _localizedValues[locale.languageCode]['how'];
  }

  String get withR {
    return _localizedValues[locale.languageCode]['withR'];
  }

  String get addReview {
    return _localizedValues[locale.languageCode]['addReview'];
  }

  String get writeReview {
    return _localizedValues[locale.languageCode]['writeReview'];
  }

  String get feedback {
    return _localizedValues[locale.languageCode]['feedback'];
  }

  String get hey {
    return _localizedValues[locale.languageCode]['hey'];
  }

  String get lightText {
    return _localizedValues[locale.languageCode]['lightText'];
  }

  String get lightMode {
    return _localizedValues[locale.languageCode]['lightMode'];
  }

//
  String get fav {
    return _localizedValues[locale.languageCode]['fav'];
  }

  String get enterAmountToAdd {
    return _localizedValues[locale.languageCode]['enterAmountToAdd'];
  }

  String get addVia {
    return _localizedValues[locale.languageCode]['addVia'];
  }

  String get type {
    return _localizedValues[locale.languageCode]['type'];
  }

  String get quick {
    return _localizedValues[locale.languageCode]['quick'];
  }

  String get best {
    return _localizedValues[locale.languageCode]['best'];
  }

  String get offer {
    return _localizedValues[locale.languageCode]['offer'];
  }

  String get burger {
    return _localizedValues[locale.languageCode]['burger'];
  }

  String get pizza {
    return _localizedValues[locale.languageCode]['pizza'];
  }

  String get frankie {
    return _localizedValues[locale.languageCode]['frankie'];
  }

  String get csandwich {
    return _localizedValues[locale.languageCode]['csandwich'];
  }

  String get stater {
    return _localizedValues[locale.languageCode]['stater'];
  }

  String get mainCourse {
    return _localizedValues[locale.languageCode]['mainCourse'];
  }

  String get customize {
    return _localizedValues[locale.languageCode]['customize'];
  }

  String get veg {
    return _localizedValues[locale.languageCode]['veg'];
  }

  String get nonVeg {
    return _localizedValues[locale.languageCode]['nonVeg'];
  }

  String get buy {
    return _localizedValues[locale.languageCode]['buy'];
  }

  String get buy1 {
    return _localizedValues[locale.languageCode]['buy1'];
  }

  String get seeAll {
    return _localizedValues[locale.languageCode]['seeAll'];
  }

  String get nearyou {
    return _localizedValues[locale.languageCode]['nearyou'];
  }

  String get fast {
    return _localizedValues[locale.languageCode]['fast'];
  }

  String get sea {
    return _localizedValues[locale.languageCode]['sea'];
  }

  String get chinese {
    return _localizedValues[locale.languageCode]['chinese'];
  }

  String get desert {
    return _localizedValues[locale.languageCode]['desert'];
  }

  String get storee {
    return _localizedValues[locale.languageCode]['storee'];
  }

  String get jesica {
    return _localizedValues[locale.languageCode]['jesica'];
  }

  String get fish {
    return _localizedValues[locale.languageCode]['fish'];
  }

  String get seven {
    return _localizedValues[locale.languageCode]['seven'];
  }

  String get operum {
    return _localizedValues[locale.languageCode]['operum'];
  }

  String get orderTextt {
    return _localizedValues[locale.languageCode]['orderTextt'];
  }

  String get indonesiann {
    return _localizedValues[locale.languageCode]['indonesiann'];
  }

  String get englishh {
    return _localizedValues[locale.languageCode]['englishh'];
  }

  String get arabicc {
    return _localizedValues[locale.languageCode]['arabicc'];
  }

  String get frenchh {
    return _localizedValues[locale.languageCode]['frenchh'];
  }

  String get portuguesee {
    return _localizedValues[locale.languageCode]['portuguesee'];
  }

  String get spanishh {
    return _localizedValues[locale.languageCode]['spanishh'];
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      ['id', 'ar', 'pt', 'fr', 'en', 'es'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) {
    // Returning a SynchronousFuture here because an async "load" operation
    // isn't needed to produce an instance of AppLocalizations.
    return SynchronousFuture<AppLocalizations>(AppLocalizations(locale));
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}
