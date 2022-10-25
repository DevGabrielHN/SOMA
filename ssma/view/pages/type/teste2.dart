import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class Teste1 {
  int? id;
  String? data;

  Teste1({this.id, this.data});

  Teste1.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['data'] = this.data;
    return data;
  }
}



class JsonDataGrid2 extends StatefulWidget {
  @override
  _JsonDataGridState2 createState() => _JsonDataGridState2();
}

class _JsonDataGridState2 extends State<JsonDataGrid2> {
  late _JsonDataGridSource jsonDataGridSource;
  List<Teste1> productlist = [];

  Future generateProductList() async {
    var response = await http.get(Uri.parse('localhost:8080/teste/get'));
    var list = json.decode(response.body).cast<Map<String, dynamic>>();
    productlist =
    await list.map<Teste1>((json) => Teste1.fromJson(json)).toList();
    jsonDataGridSource = _JsonDataGridSource(productlist);
    return productlist;
  }

  List<GridColumn> getColumns() {
    List<GridColumn> columns;
    columns = ([
      GridColumn(
          columnName: 'Id',
          label: Container(
              padding: EdgeInsets.  all(16.0),
              alignment: Alignment.center,
              child: Text(
                'Id',
              ))),
      GridColumn(
          columnName: 'Data',
          label: Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: Text(
                'Data',
              ))),
    ]);
    return columns;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter DataGrid Sample'),
      ),
      body: Container(
          child: FutureBuilder(
              future: generateProductList(),
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                return snapshot.hasData
                    ? SfDataGrid(
                    source: jsonDataGridSource, columns: getColumns())
                    : Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 3,
                  ),
                );
              })),
    );
  }
}


class _JsonDataGridSource extends DataGridSource {
  _JsonDataGridSource(this.productlist) {
    buildDataGridRow();
  }

  List<DataGridRow> dataGridRows = [];
  List<Teste1> productlist = [];

  void buildDataGridRow() {
    dataGridRows = productlist.map<DataGridRow>((dataGridRow) {
      return DataGridRow(cells: [
        DataGridCell(columnName: 'ID', value: dataGridRow.id),
        DataGridCell(columnName: 'DATE', value: dataGridRow.data),
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