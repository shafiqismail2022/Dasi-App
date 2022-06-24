import 'dart:ui';

import 'package:dasiapp/apiservice/api_calls.dart';
import 'package:dasiapp/views/depatrment.dart';
import 'package:dasiapp/views/forgetPassword.dart';
import 'package:dasiapp/views/homepage.dart';
import 'package:dasiapp/views/student_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:form_field_validator/form_field_validator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String userId = '';
  var userIdController = TextEditingController();
  var passwdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xffEAD8D8),
      body: Column(
        //mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            minRadius: 35,
            backgroundColor: Color(0xff4B72D9),
            child: Text(
              'DASI',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 28,
            ),
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                      controller: userIdController,
                      keyboardType: TextInputType.emailAddress,
                      autofocus: true,
                      decoration: InputDecoration(
                        label: const Text('Enter User Id'),
                        prefixIcon: Icon(Icons.person_outlined),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Color(0xff4B72D9)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Color(0xff4B72D9)),
                        ),
                      ),
                      validator: RequiredValidator(errorText: "Required*")),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      controller: passwdController,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        fillColor: Colors.amber,
                        label: const Text('Enter password'),
                        prefixIcon: Icon(Icons.lock_outline),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Color(0xff4B72D9)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Color(0xff4B72D9)),
                        ),
                      ),
                      validator: RequiredValidator(errorText: "Required*")),
                  TextButton(
                    onPressed: () {
                      ApiCall.getUser();
                      //rNavigator.of(context).pushNamed(ForgotPassword.routeName);
                    },
                    child: const Text(
                      'Forgot password',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Color(0xff4B72D9)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xff4B72D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {
              ApiCall.getUser();
              Navigator.of(context).pushNamed(DepartmentPage.routeName);
              //  Navigator.of(context).pushNamed(StudentDetailPage.routeName);
            },
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }

  Future<void> login() async {
    if (passwdController.text.isNotEmpty && userIdController.text.isNotEmpty) {
      var response = await http.post(Uri.parse(''),
          body: ({
            "userId": userIdController.text,
            "password": passwdController.text
          }));
      if (response.statusCode == 200) {
        // Navigator.of(context).push(MaterialPageRoute(
        //     builder: (context) =>
        //         DepartmentPage(userName: userIdController.text)));
        Navigator.of(context).pushNamed(DepartmentPage.routeName);
      } else {
        showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
                  title: Text(
                    "Invalid Credentials",
                    textAlign: TextAlign.center,
                  ),
                  content: Text(
                    "Incorrect User name or password",
                    textAlign: TextAlign.center,
                  ),
                  actions: [
                    OutlineButton(
                      focusColor: Color(0xff4B72D9),
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text("Ok"),
                    )
                  ],
                ));
      }
    }
  }
}
