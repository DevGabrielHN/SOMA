import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:soma/ssma/controller/type_controller.dart';
import 'package:soma/ssma/repository/type_repository.dart';
import 'package:soma/ssma/view/uteis/input.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';



class TableType extends StatefulWidget {
  @override
  _TableType createState() => _TableType();
}

class _TableType extends State<TableType> {

  late TypeController ctrl = TypeController(TypeRepository());

  List<GridColumn> getColumns() {
    List<GridColumn> columns;
    columns = ([
      GridColumn(
          columnName: 'typeId',
          label: Container(
              padding: EdgeInsets.  all(16.0),
              alignment: Alignment.center,
              child: Text(
                'table_type.Text.Type ID'.tr,
              ))),
      GridColumn(
          columnName: 'typeCode',
          label: Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: Text(
                'table_type.Text.Código'.tr,
              ))),
      GridColumn(
          columnName: 'domainCode',
          label: Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: Text(
                'table_type.Text.Domain code'.tr,
              ))),
      GridColumn(
          columnName: 'flexValue01',
          label: Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: Text(
                'table_type.Text.Flex value 01'.tr,
              ))),
      GridColumn(
          columnName: 'flexValue02',
          label: Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: Text(
                'table_type.Text.Flex value 01'.tr,
              ))),
      GridColumn(
          columnName: 'isNew',
          visible:  false,
          label: Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: Text(
                'table_type.Text.Is new'.tr,
              ))),
      GridColumn(
          columnName: 'updated',
          visible:  false,
          label: Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: Text(
                'table_type.Text.Updated'.tr,
              ))),
      GridColumn(
          columnName: 'createdBy',
          visible: false,
          label: Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: Text(
                'table_type.Text.Created by'.tr,
              ))),
      GridColumn(
          columnName: 'creationDate',
          visible: false,
          label: Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: Text(
                'table_type.Text.Creation date'.tr,
              ))),
      GridColumn(
          visible: false,
          columnName: 'lastUpdateDate',
          label: Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: Text(
                'table_type.Text.Last update date'.tr,
              ))),
      GridColumn(
          columnName: 'lastUpdatedBy  ',
          visible: false,
          label: Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: Text(
                'table_type.Text.Last updated by'.tr,
              ))),
      GridColumn(
          columnName: 'tableName',
          visible: false,
          label: Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: Text(
                'table_type.Text.Table name'.tr,
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
    final widthTela = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child:
        Card(
          child: Column(
            children: <Widget>[
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: widthTela < 1050? MainAxisAlignment.center: MainAxisAlignment.end,
                children: <Widget> [
                  SizedBox(width: widthTela < 1050? 0 : widthTela * 0.5,), //////
                  Container(
                    width: widthTela < 1050? widthTela * 0.25 : widthTela * 0.15,
                    child: Input(
                      labelText: 'table_type.Input.Código'.tr,
                    ),
                  ),
                  SizedBox(width: widthTela * 0.01,),////////
                  Container(
                    width: widthTela < 1050? widthTela * 0.25 : widthTela * 0.15,
                    child: Input(
                      labelText: 'table_type.Input.Domain Code'.tr,
                    ),
                  ),
                  SizedBox(width: widthTela < 850 ? widthTela * 0.03:widthTela * 0.012,),/////////
                  Container(
                    width: widthTela < 850 ? widthTela * 0.07 : widthTela * 0.033,
                    child: IconButton(
                        splashColor:  Theme.of(context).colorScheme.secondary,
                        onPressed: () {},
                        icon: Icon(Icons.search)
                    ),
                  ),
                  SizedBox(width: widthTela < 850 ? widthTela * 0.03:widthTela * 0.012,),/////////
                  Container(
                    width: widthTela < 850 ? widthTela * 0.07 : widthTela * 0.033,
                    child: IconButton(
                        splashColor: Theme.of(context).colorScheme.secondary,
                        onPressed: () {},
                        icon: Icon(Icons.clear)
                    ),
                  ),
                  SizedBox(width: widthTela < 1050? 0 : widthTela * 0.09,),///////
                ],
              ),
              SizedBox(height: 25,),
              Expanded(
                child:FutureBuilder(
                    future: ctrl.getTypes(),
                    builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                      return snapshot.hasData
                          ? SfDataGrid(
                        showCheckboxColumn: true,
                        selectionMode: SelectionMode.multiple,
                        source: ctrl.jsonDataGridSource,
                        columnWidthMode: ColumnWidthMode.fill,
                        columns: getColumns(),
                        )
                          : Center(
                        child: CircularProgressIndicator(
                          strokeWidth: 3,
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),),
    );
  }
}