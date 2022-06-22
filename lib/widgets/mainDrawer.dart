import 'dart:ui';

import 'package:dasiapp/views/changePassword.dart';

import '../views/homepage.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function tileHandler) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
        size: 26,
      ),
      title: Text(
        title,
        style: const TextStyle(
            fontWeight: FontWeight.w400, fontSize: 15, color: Colors.white),
      ),
      onTap: () {
        tileHandler();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Color.fromRGBO(41, 56, 70, 0.7),
        child: ListView(
          children: [
            const Center(
              child: Text(
                'Menu',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            DrawerHeader(
              child: Center(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Image.asset("lib/assets/images/profile.JPG"))),
            ),
            Center(
              child: Text(
                'Mr Issac Mahenge',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const Divider(
              color: Color(0xff4B72D9),
            ),
            buildListTile('Home', Icons.home_outlined, () {
              Navigator.of(context).pushReplacementNamed(Homepage.routeName);
            }),
            const Divider(
              color: Color(0xff4B72D9),
            ),
            buildListTile('Change Password', Icons.key_outlined, () {
              Navigator.of(context)
                  .pushReplacementNamed(ChangePasswordPage.routeName);
            }),
            const Divider(
              color: Color(0xff4B72D9),
            ),
            buildListTile('Log out', Icons.logout_outlined, () {
              Navigator.of(context).pushReplacementNamed('/');
            }),
            const Divider(
              color: Color(0xff4B72D9),
            ),
            buildListTile('Help', Icons.help_outline, () => {}),
            const Divider(),
          ],
        ));
  }
}
