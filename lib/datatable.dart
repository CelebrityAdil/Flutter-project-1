import 'package:flutter/material.dart';

class Datatable extends StatelessWidget {
  const Datatable({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columns: const <DataColumn>[
          DataColumn(label: Text("ID")),
          DataColumn(label: Text("Name")),
          DataColumn(label: Text("LastName")),
          DataColumn(label: Text("Age")),
          DataColumn(label: Text("Gender")),
        ],
        rows: const [
          DataRow(
            cells: [
              DataCell(Text("1")),
              DataCell(Text("adil")),
              DataCell(Text("Qayyum")),
              DataCell(Text("22")),
              DataCell(Text("Male")),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text("2")),
              DataCell(Text("Mohees")),
              DataCell(Text("Satti")),
              DataCell(Text("22")),
              DataCell(Text("Female")),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text("3")),
              DataCell(Text("Jawad ")),
              DataCell(Text("Satti")),
              DataCell(Text("18")),
              DataCell(Text("Custom")),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text("4")),
              DataCell(Text("Sami")),
              DataCell(Text("Jatoi")),
              DataCell(Text("23")),
              DataCell(Text("Unknown")),
            ],
          ),
        ],
      ),
    );
  }
}
