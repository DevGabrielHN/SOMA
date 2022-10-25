import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:soma/ssma/controller/orgao_de_classe_controller.dart';
import 'package:soma/ssma/data/orgao_de_classe_data.dart';
import 'package:soma/ssma/model/orgao_de_classe_model.dart';
import 'package:soma/ssma/repository/orgao_de_classe_repository.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../uteis/input.dart';

class TableOrgaoDeClasse extends StatefulWidget {
  const TableOrgaoDeClasse({Key? key}) : super(key: key);

  @override
  State<TableOrgaoDeClasse> createState() => _TableOrgaoDeClasseState();
}

class _TableOrgaoDeClasseState extends State<TableOrgaoDeClasse> {


  late OrgaoDeClasseController ctrl;
  late List<OrgaoDeClasseModal> orgaoDeClasse;
  late OrgaoDeClasseData orgaoDeClasseDataSource;


  @override
  void initState() {
    super.initState();
    ctrl = OrgaoDeClasseController(OrgaoDeClasseRepository());
    orgaoDeClasse = ctrl.getOrgaoDeClasseData();
    orgaoDeClasseDataSource = OrgaoDeClasseData(ogaoDeClasseData: orgaoDeClasse);
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
                    child: Input(labelText: 'table_orgao_de_classe.Input.Código'.tr),
                  ),
                  SizedBox(width: widthTela * 0.01,),////////
                  Container(
                    width: widthTela < 1050? widthTela * 0.25 : widthTela * 0.15,
                    child: Input(
                      labelText: 'table_orgao_de_classe.Input.Domain Code'.tr,
                      enabled: false,
                      mouseCursor: SystemMouseCursors.noDrop,
                      initialValue: 'CLASS_ORGANIZATION',
                    ),
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
              Expanded(
                child:
                SfDataGrid(
                  source: orgaoDeClasseDataSource,
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
