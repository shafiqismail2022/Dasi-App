import 'package:dasiapp/views/attendance.dart';
import 'package:dasiapp/views/qr_code_scanner.dart';
import 'package:dasiapp/widgets/mainDrawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthenticationPage extends StatefulWidget {
  static const routeName = '/authentication';
  final String courseCode;
  final String venue;

  const AuthenticationPage({
    Key? key,
    required this.courseCode,
    required this.venue,
  }) : super(key: key);

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  late String courseCode;
  late String venue;

  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      courseCode = widget.courseCode;
      venue = widget.venue;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: const Text("Authentication"),
        centerTitle: true,
        backgroundColor: Color(0xff4B72D9),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: const Color(0xff4B72D9)),
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    "Welcome To $courseCode",
                    style: const TextStyle(
                      color: Color(0xff4B72D9),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Venue $venue",
                    style: const TextStyle(
                      color: Color(0xff4B72D9),
                      fontSize: 28,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                buildText("Entry Verification"),
                GestureDetector(
                    onTap: () => Get.to(const QrScanner()),
                    child: buildImage("lib/assets/images/barcode.png")),
              ],
            ),
            Column(
              children: [
                buildText("Attendance Validation"),
                GestureDetector(
                    onTap: () => Get.to(AttendancePage()),
                    child: buildImage("lib/assets/images/TextScanning.png")),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Image buildImage(String imgUrl) {
    return Image.asset(
      imgUrl,
      width: 100,
      height: 100,
      fit: BoxFit.fill,
    );
  }

  Text buildText(String title) => Text(
        title,
        style: const TextStyle(fontSize: 22, color: Color(0xff4B72D9)),
      );
}
