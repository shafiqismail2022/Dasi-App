// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';


class DasiPagnatedDataTable extends StatefulWidget {
  final String title1;
  final String title2;
  final String title3;
  final String title4;
  final String tableTitle;
  final DataTableSource dataTableSource;
  const DasiPagnatedDataTable({
    Key? key,
    required this.dataTableSource,
    required this.tableTitle,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.title4,
  }) : super(key: key);

  @override
  State<DasiPagnatedDataTable> createState() => _DasiPagnatedDataTableState();
}

class _DasiPagnatedDataTableState extends State<DasiPagnatedDataTable> {
  @override
  Widget build(BuildContext context) {
    var _selectedDate = DateTime.now();
    final Size devMediaquery = MediaQuery.of(context).size;
    void _datePicker() async {
      await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2022),
        lastDate: DateTime.now(),
      ).then((datePicked) {
        if (datePicked == null) {
          return;
        }
        setState(() {
          _selectedDate = datePicked;
        });
      });
    }

    return PaginatedDataTable(
      arrowHeadColor: Color(0xff4B72D9),
      source: widget.dataTableSource,
      header: Text(
        widget.tableTitle,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      columns: [
        DataColumn(
            label: Text(
          widget.title1,
        )),
        DataColumn(label: Text(widget.title2)),
        DataColumn(label: Text(widget.title3)),
        DataColumn(label: Text(widget.title4)),
      ],
      columnSpacing: 35,
      horizontalMargin: 5,
      rowsPerPage: widget.tableTitle != "LIST OF EXAMINATIONS"   
          ? 9
          : devMediaquery.height > 731
              ? 12
              : 5,
      showCheckboxColumn: false,
    );
  }
}
