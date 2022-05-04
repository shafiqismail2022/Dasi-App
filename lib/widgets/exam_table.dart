import 'package:flutter/material.dart';

class DasiPagnatedDataTable extends StatelessWidget {
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
  Widget build(BuildContext context) {
    final Size devMediaquery = MediaQuery.of(context).size;

    return PaginatedDataTable(
      source: dataTableSource,
      header: Text(
        tableTitle,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      columns: [
        DataColumn(label: Text(title1)),
        DataColumn(label: Text(title2)),
        DataColumn(label: Text(title3)),
        DataColumn(label: Text(title4)),
      ],
      columnSpacing: 50,
      horizontalMargin: 5,
      rowsPerPage: tableTitle != "LIST OF EXAMINATIONS"
          ? 9
          : devMediaquery.height > 731
              ? 12
              : 5,
      showCheckboxColumn: false,
    );
  }
}
