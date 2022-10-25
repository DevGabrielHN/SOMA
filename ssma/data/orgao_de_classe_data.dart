import 'package:flutter/material.dart';
import 'package:soma/ssma/model/orgao_de_classe_model.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class OrgaoDeClasseData extends DataGridSource {

  List<DataGridRow> _ogaoDeClasseData = [];

  OrgaoDeClasseData({required List<OrgaoDeClasseModal> ogaoDeClasseData}){
      _ogaoDeClasseData = ogaoDeClasseData
        .map<DataGridRow>((e) => DataGridRow(cells: [
      DataGridCell<int>(columnName: 'id', value: e.id),
      DataGridCell<String>(columnName: 'name', value: e.name),
      DataGridCell<String>(columnName: 'designation', value: e.designation),
      DataGridCell<int>(columnName: 'salary', value: e.salary),
    ])).toList();
  }

  @override
  List<DataGridRow> get rows => _ogaoDeClasseData;


  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells:  row.getCells().map((e) {
          return Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(8.0),
            child: Text(e.value.toString()),
          );
        }).toList());
  }




}