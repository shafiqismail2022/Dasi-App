import 'package:dasiapp/views/Tab_Screen.dart';
import 'package:dasiapp/views/qr_code_scanner.dart';
import 'package:dasiapp/widgets/mainDrawer.dart';
import 'package:flutter/material.dart';

class ScanningOption extends StatelessWidget {
  static const routeName = '/Option-Page';
  const ScanningOption({Key? key}) : super(key: key);
  Widget buildCard(String title, VoidCallback handler) {
    return InkWell(
      onTap: handler,
      child: Card(
        color: Color(0xff4B72D9),
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 25),
          child: Text(
            title,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xffEAD8D8),
      drawer: MainDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xff4B72D9),
        title: const Text('Scanning Option'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildCard('Student-Movemnet Option', () {
              Navigator.of(context).pushNamed(TabsScreen.routeName);
            }),
            // const SizedBox(
            //   height: 15,
            // ),
            buildCard('Irregularity Option', () {
              Navigator.of(context).pushNamed(TabsScreen.routeName);
            }),
            // const SizedBox(
            //   height: 15,
            // ),
            buildCard('Attendence Option', () {
              Navigator.of(context).pushNamed(TabsScreen.routeName);
            })
          ],
        ),
      ),
    );
  }
}
