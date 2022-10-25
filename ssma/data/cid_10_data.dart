import 'package:flutter/material.dart';
import 'package:soma/ssma/model/cid_10_model.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class Cid10Data extends DataGridSource{

  List<DataGridRow> _cid10Data = [];

  Cid10Data({required List<Cid10Model> cid10Data}){
    _cid10Data = cid10Data
        .map<DataGridRow>((e) => DataGridRow(cells: [
      DataGridCell<int>(columnName: 'id', value: e.id),
      DataGridCell<String>(columnName: 'name', value: e.name),
      DataGridCell<String>(columnName: 'designation', value: e.designation),
      DataGridCell<int>(columnName: 'salary', value: e.salary),
    ])).toList();
  }

  @override
  List<DataGridRow> get rows => _cid10Data;


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