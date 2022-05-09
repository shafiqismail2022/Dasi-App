import 'package:dasiapp/controller/table_controller.dart';
import 'package:dasiapp/models/examination.dart';
import 'package:dasiapp/widgets/exam_table.dart';

import '../models/examination.dart';
import '../widgets/mainDrawer.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  static const routeName = '/dashboard';
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool isClicked = false;
  final DataTableSource _data = ExamData();
  static const String title1 = "Course Code";
  static const String title2 = "Venue";
  static const String title3 = "Start Exam";
  static const String title4 = "End Exam";
  static const String tableTitle = "LIST OF EXAMINATIONS";

  // Widget customizeinput(String title, Color color, Function handler) {
  //   return isClicked
  //       ? TextField(
  //           onTap: handler(),
  //           style: TextStyle(color: color),
  //         )
  //       : Text(title);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff4B72D9),
        // title: customizeinput('Search', Colors.white, () {}),
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                children: [
                  buildCard("Total Student", 38000),
                  buildCard("Ongoing Examinations", 10),
                  buildCard("Completed Examinations", 17),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              DasiPagnatedDataTable(
                dataTableSource: _data,
                tableTitle: tableTitle,
                title1: title1,
                title2: title2,
                title3: title3,
                title4: title4,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(String cardName, int amount) => Card(
        shadowColor: Color.fromRGBO(41, 56, 70, 0.7),
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
          child: Column(
            children: [
              Text(
                cardName,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                amount.toString(),
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      );
}

class CustomSearch extends SearchDelegate {
  List<Examination> exams = DUMMY_EXAM.dummyExamList;
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
    List<Examination> examFetch = [];

    // final res = Ema
    for (var item in exams) {
      if (item.courseCode.toLowerCase().contains(query.toLowerCase())) {
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
    List<Examination> examFetch = [];
    for (var item in exams) {
      if (item.courseCode.toLowerCase().contains(query.toLowerCase())) {
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
