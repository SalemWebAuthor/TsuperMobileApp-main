import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:homepage/pages/loginpage.dart';
import 'pages/routes.dart';
import 'pages/receipt.dart';
import 'pages/findjeep.dart';
import 'pages/payonline.dart';
import 'pages/user.dart';
import 'pages/register.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TsuperPH',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.indigo,
      ),
      home: LoginPage(),
      routes: {
        '/receipt': (context) => ReceiptPage(),
        '/location': (context) => LocationPage(),
        '/find_jeep': (context) => FindJeepPage(),
        '/pay_online': (context) => PayOnline(),
        '/user': (context) => UserPage(),
        '/register': (context) => RegistrationPage()
      },
    );
  }
}