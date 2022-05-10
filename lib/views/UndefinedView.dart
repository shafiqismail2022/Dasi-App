// import 'package:dasiapp/widgets/mainDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class UndefinedViewPage extends StatelessWidget {
  static const name = '/Unknown';
  const UndefinedViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      // backgroundColor: Color(0xffEAD8D8),
      // drawer: MainDrawer(),
      appBar: AppBar(
        backgroundColor: const Color(0xff4B72D9),
      ),
      body: const Center(
        child: Text('No data available'),
      ),
    );
  }
}
