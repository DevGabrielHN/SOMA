import 'package:flutter/material.dart';
import 'package:soma/ssma/model/exames_model.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class ExamesData extends DataGridSource {

  List<DataGridRow> _examesData = [];

  ExamesData({required List<ExamesModel> examesData}) {
    _examesData = examesData
        .map<DataGridRow>((e) => DataGridRow(cells: [
      DataGridCell<int>(columnName: 'id', value: e.id),
      DataGridCell<String>(columnName: 'name', value: e.name),
      DataGridCell<String>(columnName: 'designation', value: e.designation),
      DataGridCell<int>(columnName: 'salary', value: e.salary),
    ])).toList();
  }


  @override
  List<DataGridRow> get rows => _examesData;


  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map((e) {
          return Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(8.0),
            child: Text(e.value.toString()),
          );
        }).toList()
    );
  }



}