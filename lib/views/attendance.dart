import 'package:dasiapp/controller/table_controller.dart';
import 'package:dasiapp/widgets/exam_table.dart';
import 'package:dasiapp/widgets/mainDrawer.dart';
import 'package:flutter/material.dart';
import '../models/student.dart';

class AttendancePage extends StatefulWidget {
  AttendancePage({Key? key}) : super(key: key);

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  final DataTableSource studentData = StudentData();
  final StudentData student = StudentData();
  static const String title1 = "RegNo.";
  static const String title2 = "Full Name";
  static const String title3 = "Course Code";
  static const String title4 = "YoS";
  static const String tableTitle = "LIST OF STUDENTS";
  bool isClicked = false;

  final _textEditingController = TextEditingController();
  String regNo = "";
  var searchResult;

  @override
  void initState() {
    super.initState();
    _textEditingController.addListener(() {});
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget customizeinput(String title, Color color, Function handler) {
    return isClicked
        ? TextField(
            controller: _textEditingController,
            onChanged: (regNo) {
              setState(() {
                this.regNo = _textEditingController.text.toString();
                searchResult = student.data.firstWhere(
                    (element) => element["registrationNo"] == this.regNo);
              });
              print("****###" + searchResult.toString());
              print("****&&&" + regNo);
            },
            // onSubmitted: (searchResult) {
            //   print("****###" + searchResult.toString());
            //   print("****&&&" + regNo);
            // },
            onTap: handler(),
            style: TextStyle(color: color),
          )
        : Text(title);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xffEAD8D8),
      drawer: MainDrawer(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff4B72D9),
        title: customizeinput('Search', Colors.white, () {}),
       actions: [
          IconButton(
            onPressed: () {
              // setState(() {
              // isClicked ? isClicked = false : isClicked = true;
              showSearch(context: context, delegate: CustomSearch());
              // });
            },
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: DasiPagnatedDataTable(
          dataTableSource: studentData,
          tableTitle: tableTitle,
          title1: title1,
          title2: title2,
          title3: title3,
          title4: title4,
        ),
      ),
    );
  }
}

class CustomSearch extends SearchDelegate {
  List<Student> exams = DummyStudent.dummyStudentList ;
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<Student> examFetch = [];

    // final res = Ema
    for (var item in exams) {
      if (item.registrationNo.toLowerCase().contains(query.toLowerCase())) {
        examFetch.add(item);
      }
    }
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(examFetch[index].toString()),
        );
      },
      itemCount: examFetch.length,
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Student> examFetch = [];
    for (var item in exams) {
      if (item.registrationNo.toLowerCase().contains(query.toLowerCase())) {
        examFetch.add(item);
      }
    }
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(examFetch[index].toString()),
        );
      },
      itemCount: examFetch.length,
    );
  }
}
