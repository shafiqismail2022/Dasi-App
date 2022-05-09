import 'package:dasiapp/views/UndefinedView.dart';
import 'package:dasiapp/views/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DepartmentPage extends StatelessWidget {
  static const routeName = '/Department';
  const DepartmentPage({Key? key}) : super(key: key);

  Widget buildCard(String title, VoidCallback handler) {
    return Card(
      color: Color(0xff4B72D9),
      child: InkWell(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.w500, fontSize: 70, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        onTap: handler,
      ),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff4B72D9),
        title: const Text("Choose Department"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 28),
              buildCard('CSE', () {
                Navigator.of(context).pushNamed(Homepage.routeName);
              }),
              const SizedBox(
                height: 28,
              ),
              buildCard('IST', () {
                Navigator.of(context).pushNamed(UndefinedViewPage.name);
              }),
              const SizedBox(height: 28),
              buildCard('ETE', () {
                Navigator.of(context).pushNamed(UndefinedViewPage.name);
              })
            ],
          ),
        ),
      ),
    );
  }
}
