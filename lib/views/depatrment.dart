import 'package:dasiapp/views/UndefinedView.dart';
import 'package:dasiapp/views/homepage.dart';
import 'package:dasiapp/widgets/mainDrawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DepartmentPage extends StatelessWidget {
  static const routeName = '/Department';
  // String userName;
  // DepartmentPage({required this.userName});

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
      // backgroundColor: Color(0xffEAD8D8),
      // drawer: MainDrawer(),
      appBar: AppBar(
        backgroundColor: const Color(0xff4B72D9),
        title: const Text("Choose Department"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildCard('CSE', () {
              Navigator.of(context).pushNamed(Homepage.routeName);
            }),
            buildCard('IST', () {
              Navigator.of(context).pushNamed(UndefinedViewPage.name);
            }),
            buildCard('ETE', () {
              Navigator.of(context).pushNamed(UndefinedViewPage.name);
            })
          ],
        ),
      ),
    );
  }
}
