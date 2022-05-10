// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:dasiapp/views/ocr_textRecognition.dart';
import 'package:dasiapp/views/qr_code_scanner.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  static const routeName='/Tab-Option';
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  late List<Map<String, dynamic>> _pages;
  int _pageIndex = 0;
  void selectPageindex(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  @override
  void initState() {
    _pages = [
      //Use Dynamic instead of object;
      {'page': QrScanner(), 'title': ' Scan QR Code'},
      {'page': TextRecognitionPage(), 'title': 'Capture Booklet Number'},
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4B72D9),
        title: Text(_pages[_pageIndex]['title']),
      ),
      body: _pages[_pageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectPageindex,
        unselectedItemColor: Color.fromRGBO(41, 56, 70, 0.7),
        selectedItemColor: Color(0xff4B72D9),
        currentIndex: _pageIndex,
        type: BottomNavigationBarType.shifting,
        backgroundColor: Color(0xff4B72D9),
        items: [
          BottomNavigationBarItem(
            label: 'Qr Code',
            icon: Icon(Icons.qr_code_outlined),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            label: 'Booklet Number',
            icon: Icon(Icons.document_scanner),
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
    // return DefaultTabController(
    //   length: 2,
    //   child: Scaffold(
    //     appBar: AppBar(
    //       title: Text('Meals'),
    //       bottom: TabBar(
    //         tabs: [
    //           Tab(
    //             icon: Icon(Icons.category),
    //             text: 'Categories',
    //           ),
    //           Tab(
    //             icon: Icon(Icons.star),
    //             text: 'Favorite',
    //           ),
    //         ],
    //       ),
    //     ),
    //     body: TabBarView(children: [
    //       CategoriesScreen(),
    //       FavoriteScreen(),
    //     ]),
    //   ),
    // );
  }
}
