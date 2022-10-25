import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:soma/ssma/controller/usuario_controller.dart';
import 'package:soma/ssma/data/usuario_data.dart';
import 'package:soma/ssma/model/usuario_model.dart';
import 'package:soma/ssma/repository/usuario_repository.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../uteis/input.dart';

class TableUsuario extends StatefulWidget {
  const TableUsuario({Key? key}) : super(key: key);

  @override
  State<TableUsuario> createState() => _TableUsuarioState();
}

class _TableUsuarioState extends State<TableUsuario> {

  late UsuarioController ctrl;
  late List<UsuarioModal> usuarios;
  late UsuarioData usuarioDataSource;

  @override
  void initState() {
    super.initState();
    ctrl = UsuarioController(UsuarioRepository());
    usuarios = ctrl.getUsuarioData();
    usuarioDataSource = UsuarioData(usuarioData: usuarios);
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
                        labelText: 'table_usuario.Input.Login'.tr,
                      ),
                  ),
                  SizedBox(width: widthTela * 0.01,),////////
                  Container(
                    width: widthTela < 1050? widthTela * 0.25 : widthTela * 0.15,
                      child: Input(
                        labelText: 'table_usuario.Input.Nome'.tr,
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

              Row(
                mainAxisAlignment: widthTela < 750 ? MainAxisAlignment.center : MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).pushNamed('/cadastroUsuario'),
                    child: Text('table_usuario.ElevatedButton.Adicionar usuario'.tr),
                    style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).colorScheme.secondary,
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                        textStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(width: widthTela > 750 ? widthTela * 0.1 : 0)
                ],
              ),
              SizedBox(height: 15,),
              Expanded(
                 child:
                 SfDataGrid(
                   source: usuarioDataSource,
                   showCheckboxColumn: true,
                   //   checkboxColumnSettings: DataGridCheckboxColumnSettings(showCheckboxOnHeader: false),
                   selectionMode: SelectionMode.multiple,
                   columnWidthMode: ColumnWidthMode.fill,
                   columns: <GridColumn>[
                     GridColumn(
                         columnName: 'userId',
                         label: Container(
                             padding: EdgeInsets.all(16.0),
                             alignment: Alignment.center,
                             child: Text(
                               'table_usuario.Text.User Id'.tr,
                             ))),
                     GridColumn(
                         columnName: 'languageCode',
                         label: Container(
                             padding: EdgeInsets.all(16.0),
                             alignment: Alignment.center,
                             child: Text(
                               'table_usuario.Text.Language Code'.tr,
                             ))),
                     GridColumn(
                         columnName: 'createdBy',
                         label: Container(
                             padding: EdgeInsets.all(16.0),
                             alignment: Alignment.center,
                             child: Text(
                               'table_usuario.Text.Created By'.tr,
                             ))),
                     GridColumn(
                         columnName: 'creationDate',
                         label: Container(
                             padding: EdgeInsets.all(16.0),
                             alignment: Alignment.center,
                             child: Text(
                               'table_usuario.Text.Creation Date'.tr,
                             ))),
                     GridColumn(
                         columnName: 'lastUpdatedBy',
                         label: Container(
                             padding: EdgeInsets.all(16.0),
                             alignment: Alignment.center,
                             child: Text(
                               'table_usuario.Text.Last Updated By'.tr,
                             ))),
                     GridColumn(
                         columnName: 'lastUpdateDate',
                         label: Container(
                             padding: EdgeInsets.all(16.0),
                             alignment: Alignment.center,
                             child: Text(
                               'table_usuario.Text.Last Update Date'.tr,
                             ))),
                     GridColumn(
                         columnName: 'userName',
                         label: Container(
                             padding: EdgeInsets.all(16.0),
                             alignment: Alignment.center,
                             child: Text(
                               'table_usuario.Text.User  Name'.tr,
                             ))),
                     GridColumn(
                         columnName: 'emplId',
                         label: Container(
                             padding: EdgeInsets.all(16.0),
                             alignment: Alignment.center,
                             child: Text(
                               'table_usuario.Text.EmplId'.tr,
                             ))),
                     GridColumn(
                         columnName: 'blocked',
                         label: Container(
                             padding: EdgeInsets.all(16.0),
                             alignment: Alignment.center,
                             child: Text(
                               'table_usuario.Text.blocked'.tr,
                             ))),
                     GridColumn(
                         columnName: 'authenticate',
                         label: Container(
                             padding: EdgeInsets.all(16.0),
                             alignment: Alignment.center,
                             child: Text(
                               'table_usuario.Text.authenticate'.tr,
                             ))),
                     GridColumn(
                         columnName: 'changePasswordFirstAccess',
                         label: Container(
                             padding: EdgeInsets.all(16.0),
                             alignment: Alignment.center,
                             child: Text(
                               'table_usuario.Text.changePasswordFirstAccess'.tr,
                             ))),
                     GridColumn(
                         columnName: 'expirationDate',
                         label: Container(
                             padding: EdgeInsets.all(16.0),
                             alignment: Alignment.center,
                             child: Text(
                               'table_usuario.Text.expirationDate'.tr,
                             ))),
                     GridColumn(
                         columnName: 'lastAccessDate',
                         label: Container(
                             padding: EdgeInsets.all(16.0),
                             alignment: Alignment.center,
                             child: Text(
                               'table_usuario.Text.lastAccessDate'.tr,
                             ))),
                     GridColumn(
                         columnName: 'encryptedUserPassword',
                         label: Container(
                             padding: EdgeInsets.all(16.0),
                             alignment: Alignment.center,
                             child: Text(
                               'table_usuario.Text.encryptedUserPassword'.tr,
                             ))),
                     GridColumn(
                         columnName: 'sysAdmin',
                         label: Container(
                             padding: EdgeInsets.all(16.0),
                             alignment: Alignment.center,
                             child: Text(
                               'table_usuario.Text.sysAdmin'.tr,
                             ))),
                     GridColumn(
                         columnName: 'userAccessFunctionList',
                         label: Container(
                             padding: EdgeInsets.all(16.0),
                             alignment: Alignment.center,
                             child: Text(
                               'table_usuario.Text.userAccessFunctionList'.tr,
                             ))),
                     GridColumn(
                         columnName: 'userPermissionGroup',
                         label: Container(
                             padding: EdgeInsets.all(16.0),
                             alignment: Alignment.center,
                             child: Text(
                               'table_usuario.Text.userPermissionGroup'.tr,
                             ))),

                   ],
                 ),
              ),
            ],
          ),
        ),),
    );
  }
}