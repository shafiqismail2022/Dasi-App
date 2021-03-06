class Student {
  final String registrationNo;
  final String fullName;
  final String yearOfStudy;
  final String courseCode;

  const Student({
    required this.registrationNo,
    required this.fullName,
    required this.courseCode,
    required this.yearOfStudy,
  });
}

class DummyStudent {
  static List<Student> dummyStudentList = const [
    Student(
      registrationNo: "T/UDOM/2018/00116",
      fullName: "Bitwale Ngolanya",
      courseCode: "CS 312",
      yearOfStudy: "1st Year",
    ),
    Student(
      registrationNo: "T/UDOM/2018/08684",
      fullName: "Joshua Oscar Masangula",
      courseCode: "CS 312",
      yearOfStudy: "1st Year",
    ),
    Student(
      registrationNo: "T/UDOM/2018/03591",
      fullName: "Shafiq Mohamed Ismail",
      courseCode: "CS 312",
      yearOfStudy: "1st Year",
    ),
    Student(
      registrationNo: "T/UDOM/2018/00125",
      fullName: "Omar Salum",
      courseCode: "CS 312",
      yearOfStudy: "1st Year",
    ),
    Student(
      registrationNo: "T/UDOM/2018/08789",
      fullName: "Jensen Johansen",
      courseCode: "CS 312",
      yearOfStudy: "1st Year",
    ),
    Student(
      registrationNo: "T/UDOM/2018/00126",
      fullName: "Daudi Shayo",
      courseCode: "CS 312",
      yearOfStudy: "1st Year",
    ),
    Student(
      registrationNo: "T/UDOM/2018/03590",
      fullName: "Tamimu Ngolanya",
      courseCode: "CS 312",
      yearOfStudy: "1st Year",
    ),
    Student(
      registrationNo: "T/UDOM/2018/06416",
      fullName: "George Ayoub",
      courseCode: "312",
      yearOfStudy: "1st Year",
    ),
    Student(
      registrationNo: "T/UDOM/2018/06400",
      fullName: "Peter Mkane",
      courseCode: "312",
      yearOfStudy: "1st Year",
    ),
    Student(
      registrationNo: "T/UDOM/2018/06468",
      fullName: "Ibtisam Suleiman",
      courseCode: "312",
      yearOfStudy: "1st Year",
    ),
    Student(
      registrationNo: "T/UDOM/2018/06416",
      fullName: "George Ayoub",
      courseCode: "312",
      yearOfStudy: "1st Year",
    ),
    Student(
      registrationNo: "T/UDOM/2018/00125",
      fullName: "Angel Getrude",
      courseCode: "312",
      yearOfStudy: "1st Year",
    ),
    Student(
      registrationNo: "T/UDOM/2018/11376",
      fullName: "Ismail Ramadan Mkumbi",
      courseCode: "312",
      yearOfStudy: "1st Year",
    ),
    Student(
      registrationNo: "T/UDOM/2018/06465",
      fullName: "Alex Mhando",
      courseCode: "312",
      yearOfStudy: "1st Year",
    ),
    Student(
      registrationNo: "L/UDOM/2018/00133",
      fullName: "Beatrice Gbanlon",
      courseCode: "312",
      yearOfStudy: "1st Year",
    ),
  ];
}
