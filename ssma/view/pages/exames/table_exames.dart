import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/export.dart';
import 'package:soma/ssma/controller/exames_controller.dart';
import 'package:soma/ssma/data/exames_data.dart';
import 'package:soma/ssma/model/exames_model.dart';
import 'package:soma/ssma/repository/exames_repository.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../uteis/input.dart';

class TableExames extends StatefulWidget {
  const TableExames({Key? key}) : super(key: key);

  @override
  State<TableExames> createState() => _TableExamesState();
}

class _TableExamesState extends State<TableExames> {

  late ExamesController ctrl;
  late List<ExamesModel> exames;
  late ExamesData examesDataSource;

  @override
  void initState(){
    super.initState();
    ctrl = ExamesController(ExamesRepository());
    exames = ctrl.getExamesData();
    examesDataSource = ExamesData(examesData: exames);
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
                    child: Input(labelText: 'table_exames.Input.Código'.tr),
                  ),
                  SizedBox(width: widthTela * 0.01,),////////
                  Container(
                    width: widthTela < 1050? widthTela * 0.25 : widthTela * 0.15,
                    child: Input(labelText: 'table_exames.Input.Descrição'.tr,),
                  ),
                  SizedBox(width: widthTela < 850 ? widthTela * 0.03:widthTela * 0.012,),/////////
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

              Row(
                mainAxisAlignment: widthTela < 750 ? MainAxisAlignment.center : MainAxisAlignment.end,
                children: [
                  Container(
                    child: ElevatedButton(
                      onPressed: () => Navigator.of(context).pushNamed('/cadastroExame'),
                      child: Text('Adicionar exame'),
                      style: ElevatedButton.styleFrom(
                          primary: Theme.of(context).colorScheme.secondary,
                          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  SizedBox(width: widthTela > 750 ? widthTela * 0.1 : 0)
                ],
              ),
              SizedBox(height: 15,),
              Expanded(
                child:
                SfDataGrid(
                  source: examesDataSource,
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
    );
  }
}
