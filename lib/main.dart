import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marah1/screen/ConfirmOTP.dart';
import 'package:marah1/screen/Forgot_screen.dart';
import 'package:marah1/screen/addadress_screen.dart';
import 'package:marah1/screen/category_screen.dart';
import 'package:marah1/screen/changepassword_screen.dart';
import 'package:marah1/screen/checkout_screen.dart';
import 'package:marah1/screen/detproduct_screen.dart';
import 'package:marah1/screen/faq_screen.dart';
import 'package:marah1/screen/home_screen.dart';
import 'package:marah1/screen/language_screen.dart';
import 'package:marah1/screen/legal_screen.dart';
import 'package:marah1/screen/login_screen.dart';
import 'package:marah1/screen/main_screen.dart';
import 'package:marah1/screen/notification_screen.dart';
import 'package:marah1/screen/payment_screen.dart';
import 'package:marah1/screen/product_screen.dart';
import 'package:marah1/screen/profile_screen.dart';
import 'package:marah1/screen/search_screen.dart';
import 'package:marah1/screen/setting_screen.dart';
import 'package:marah1/screen/signup_screen.dart';
import 'package:marah1/screen/splash_screen.dart';
import 'package:marah1/screen/t.dart';
import 'package:marah1/screen/test1.dart';
import 'package:marah1/screen/truck_screen.dart';
import 'package:marah1/screen/ubpay_screen.dart';
import 'package:marah1/screen/wallet_screen.dart';


void main() {
 //SystemChrome.setSystemUIOverlayStyle(SystemUIoverlayStyle(statusBarColor:Colors.transparent));
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
         //  theme: ThemeData.light(),
           home: profile(),
    );
  }
}

