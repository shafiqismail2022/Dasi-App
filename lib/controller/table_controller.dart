import 'package:dasiapp/models/student.dart';
import 'package:dasiapp/views/Tab_Screen.dart';
import 'package:dasiapp/views/ocr_textRecognition.dart';
import 'package:dasiapp/views/qr_code_scanner.dart';
import 'package:flutter/material.dart';
import '../models/examination.dart';
import 'package:get/get.dart';
import '../views/authentication_page.dart';

class ExamData extends DataTableSource {
  // Generate some made-up data
  final List<Map<String, dynamic>> _data = List.generate(
    DUMMY_EXAM.dummyExamList.length,
    (index) => {
      "courseCode": DUMMY_EXAM.dummyExamList[index].courseCode,
      "venue": DUMMY_EXAM.dummyExamList[index].venue,
      "startExam": DUMMY_EXAM.dummyExamList[index].startExam,
      "endExam": DUMMY_EXAM.dummyExamList[index].endExam,
    },
  );

  @override
  bool get isRowCountApproximate => false;
  @override
  int get rowCount => _data.length;
  @override
  int get selectedRowCount => 0;
  @override
  DataRow getRow(int index) {
    return DataRow(cells: [
      DataCell(
        Text(_data[index]['courseCode'].toString()),
        onTap: () => Get.to(AuthenticationPage(
          courseCode: _data[index]['courseCode'].toString(),
          venue: _data[index]['venue'].toString(),
        )),
      ),
      DataCell(
        Text(_data[index]["venue"].toString()),
        onTap: () => Get.to(AuthenticationPage(
          courseCode: _data[index]['courseCode'].toString(),
          venue: _data[index]['venue'].toString(),
        )),
      ),
      DataCell(
        Text(_data[index]["startExam"].toString()),
        onTap: () => Get.to(AuthenticationPage(
          courseCode: _data[index]['courseCode'].toString(),
          venue: _data[index]['venue'].toString(),
        )),
      ),
      DataCell(
        Text(_data[index]["endExam"].toString()),
        onTap: () => Get.to(AuthenticationPage(
          courseCode: _data[index]['courseCode'].toString(),
          venue: _data[index]['venue'].toString(),
        )),
      ),
    ]);
  }
}

class StudentData extends DataTableSource {
  // Generate some made-up data
  final List<Map<String, dynamic>> data = List.generate(
    DummyStudent.dummyStudentList.length,
    (index) => {
      "registrationNo": DummyStudent.dummyStudentList[index].registrationNo,
      "fullName": DummyStudent.dummyStudentList[index].fullName,
      "courseCode": DummyStudent.dummyStudentList[index].courseCode,
      "yearOfStudy": DummyStudent.dummyStudentList[index].yearOfStudy,
    },
  );

  @override
  bool get isRowCountApproximate => false;
  @override
  int get rowCount => data.length;
  @override
  int get selectedRowCount => 0;
  @override
  DataRow getRow(int index) {
    return DataRow(cells: [
      DataCell(
        Text(data[index]['registrationNo'].toString()),
        onTap: () => Get.to(TabsScreen()),
      ),
      DataCell(
        Text(data[index]["fullName"].toString()),
        onTap: () => Get.to(TabsScreen()),
      ),
      DataCell(
        Text(data[index]["courseCode"].toString()),
        onTap: () => Get.to(TabsScreen()),
      ),
      DataCell(
        Text(data[index]["yearOfStudy"].toString()),
        onTap: () => Get.to(TabsScreen()),
      ),
    ]);
  }
}
