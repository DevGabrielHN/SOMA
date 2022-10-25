import 'package:flutter/material.dart';
import 'package:soma/ssma/model/type_model.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class TypeData extends DataGridSource {
  TypeData(this.productlist) {
    buildDataGridRow();
  }

  List<DataGridRow> dataGridRows = [];
  List<TypeModel> productlist = [];

  void buildDataGridRow() {
    dataGridRows = productlist.map<DataGridRow>((dataGridRow) {
      return DataGridRow(cells: [
        DataGridCell(columnName: 'typeId', value: dataGridRow.typeId),
        DataGridCell(columnName: 'typeCode', value: dataGridRow.typeCode),
        DataGridCell(columnName: 'domainCode', value: dataGridRow.domainCode),
        DataGridCell(columnName: 'flexValue01', value: dataGridRow.flexValue01),
        DataGridCell(columnName: 'flexValue02', value: dataGridRow.flexValue02),
        DataGridCell(columnName: 'isNew', value: dataGridRow.isNew ),
        DataGridCell(columnName: 'updated', value: dataGridRow.updated ),
        DataGridCell(columnName: 'createdBy', value: dataGridRow.createdBy ),
        DataGridCell(columnName: 'creationDate', value: dataGridRow.creationDate ),
        DataGridCell(columnName: 'lastUpdateDate', value: dataGridRow.lastUpdateDate ),
        DataGridCell(columnName: 'lastUpdatedBy', value: dataGridRow.lastUpdatedBy ),
        DataGridCell(columnName: 'tableName', value: dataGridRow.tableName ),
      ]);
    }).toList(growable: false);
  }

  @override
  List<DataGridRow> get rows => dataGridRows;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
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