import 'package:dasiapp/views/UndefinedView.dart';
import 'package:dasiapp/views/changePassword.dart';
import 'package:dasiapp/views/depatrment.dart';

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
        DepartmentPage.routeName: (ctx) => DepartmentPage(),
        ChangePasswordPage.routeName: (ctx) => ChangePasswordPage(),
        // AuthenticstionPage.routeName: (ctx) => AuthenticstionPage(),
      },
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => UndefinedViewPage(),
      ),
    );
  }
}
