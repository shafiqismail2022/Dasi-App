import './views/authentication_page.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import './views/forgetPassword.dart';
import './views/homepage.dart';
import 'package:flutter/material.dart';
import './views/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dasi',
      // theme: ,
      // home: LoginPage(),
      initialRoute: '/', // //default Route
      routes: {
        //Another way of writing home route
        '/': (ctx) => LoginPage(),
        ForgotPassword.routeName: (ctx) => ForgotPassword(),
        Homepage.routeName: (ctx) => Homepage(),
        // AuthenticstionPage.routeName: (ctx) => AuthenticstionPage(),
      },
    );
  }
}