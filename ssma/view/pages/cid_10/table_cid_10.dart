import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:soma/ssma/controller/cid_10_controller.dart';
import 'package:soma/ssma/data/cid_10_data.dart';
import 'package:soma/ssma/model/cid_10_model.dart';
import 'package:soma/ssma/repository/cid_10_repository.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../uteis/input.dart';

class TableCid10 extends StatefulWidget {
  const TableCid10({Key? key}) : super(key: key);

  @override
  State<TableCid10> createState() => _TableCid10State();
}

class _TableCid10State extends State<TableCid10> {

  late Cid10Controller ctrl;
  late List<Cid10Model> cid10;
  late Cid10Data cid10dataSource;

  @override
  void initState(){
    super.initState();
    ctrl = Cid10Controller(Cid10Repository());
    cid10 = ctrl.getCid10Data();
    cid10dataSource = Cid10Data(cid10Data: cid10);
  }


  @override
  Widget build(BuildContext context) {

    final widthTela = MediaQuery.of(context).size.width;

    return  Scaffold(
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
                      child: Input(labelText: 'table_cid_10.Input.Código'.tr,),
                  ),
                  SizedBox(width: widthTela * 0.01,),
                  Container(
                    width: widthTela < 1050? widthTela * 0.25 : widthTela * 0.15,
                    child: Input(
                      labelText: 'table_cid_10.Input.Domain Code'.tr,
                      mouseCursor: SystemMouseCursors.noDrop,
                      enabled: false,
                      initialValue: 'CID_10',
                    ),
                  ),
                  SizedBox(width: widthTela < 850 ? widthTela * 0.03:widthTela * 0.012,),
                  Container(
                    width: widthTela < 850 ? widthTela * 0.07 : widthTela * 0.033,
                    child: IconButton(
                        splashColor: Theme.of(context).colorScheme.secondary,
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
                child:
                SfDataGrid(
                  source: cid10dataSource,
                  columnWidthMode: ColumnWidthMode.fill,
                  columns: <GridColumn>[
                    GridColumn(
                        columnName: 'id',
                        label: Container(
                            padding: EdgeInsets.all(16.0),
                            alignment: Alignment.center,
                            child: Text(
                              'ID',
                            ))),
                    GridColumn(
                        columnName: 'name',
                        label: Container(
                            padding: EdgeInsets.all(8.0),
                            alignment: Alignment.center,
                            child: Text('Name'))),
                    GridColumn(
                        columnName: 'designation',
                        label: Container(
                            padding: EdgeInsets.all(8.0),
                            alignment: Alignment.center,
                            child: Text(
                              'Designation',
                              overflow: TextOverflow.ellipsis,
                            ))),
                    GridColumn(
                        columnName: 'salary',
                        label: Container(
                            padding: EdgeInsets.all(8.0),
                            alignment: Alignment.center,
                            child: Text('Salary'))),
                  ],
                ),
              ),










            ],
          ),
        ),),
    );;
  }
}