import 'package:dasiapp/widgets/mainDrawer.dart';
import 'package:flutter/material.dart';

class StudentDetailPage extends StatelessWidget {
  
  static const routeName = '/student-Details';
  const StudentDetailPage({Key? key}) : super(key: key);
  Widget buildDetail(String info, String data, IconData icons) {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          Text(
            info,
            style: TextStyle(fontSize: 18),
          ),
          Card(
            color: Color(0xff4B72D9),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
            child: Container(
              margin: EdgeInsets.all(6),
              child: Text(
                data,
                style: TextStyle(
                  decorationStyle: TextDecorationStyle.solid,
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          Icon(
            icons,
            color: Colors.green,
            size: 32,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StudentDetails'),
        backgroundColor: Color(0xff4B72D9),
      ),
      drawer: MainDrawer(),
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // const SizedBox(
          //   height: 14,
          // ),
          ClipRRect(
              borderRadius: BorderRadius.circular(80),
              child: Image.asset("lib/assets/images/profile.JPG")),
          // const SizedBox(
          //   height: 25,
          // ),
          buildDetail('Reg No.', 'T/UDOM/2018/03591', Icons.check),
          buildDetail('Payment', 'Complete', Icons.check),
          buildDetail('CourseWork', 'Pass', Icons.check),
          buildDetail('Examination', 'Valid', Icons.check),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border:
                    Border.all(color: Colors.green, style: BorderStyle.solid)),
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            child: Text(
              "Eligible",
              style: TextStyle(
                  // backgroundColor: Colors.green,
                  fontSize: 24,
                  color: Color(0xff4B72D9)),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xff4B72D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {
              // Navigator.of(context).pushNamed(DepartmentPage.routeName);
            },
            child: const Text('Next'),
          ),
        ],
      )),
    );
  }
}
