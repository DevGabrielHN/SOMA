import 'package:flutter/material.dart';
import 'package:soma/ssma/model/usuario_model.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class UsuarioData extends DataGridSource {

  List<DataGridRow> _usuarioData = [];

  UsuarioData({required List<UsuarioModal> usuarioData}) {
    _usuarioData = usuarioData
        .map<DataGridRow>((e) => DataGridRow(cells: [
      DataGridCell<int>(columnName: 'userId',value: e.userId),
      DataGridCell<String>(columnName: 'languageCode', value: e.languageCode),
      DataGridCell<int>(columnName: 'createdBy', value: e.createdBy),
      DataGridCell<DateTime>(columnName: 'creationDate', value: e.creationDate),
      DataGridCell<int>(columnName: 'lastUpdatedBy', value: e.lastUpdatedBy),
      DataGridCell<DateTime>(columnName: 'lastUpdateDate', value: e.lastUpdateDate),
      DataGridCell<String>(columnName: 'userName', value: e.userName),
      DataGridCell<String>(columnName: 'emplId', value: e.emplId),
      DataGridCell<String>(columnName: 'blocked', value: e.blocked),
      DataGridCell<String>(columnName: 'authenticate', value: e.authenticate),
      DataGridCell<String>(columnName: 'changePasswordFirstAccess', value: e.changePasswordFirstAccess),
      DataGridCell<DateTime>(columnName: 'expirationDate', value: e.expirationDate),
      DataGridCell<DateTime>(columnName: 'lastAccessDate', value: e.lastAccessDate),
      DataGridCell<String>(columnName: 'encryptedUserPassword', value: e.encryptedUserPassword),
      DataGridCell<String>(columnName: 'sysAdmin', value: e.sysAdmin),
      DataGridCell<List<UserAccessFunctionList>>(columnName: 'userAccessFunctionList', value: e.userAccessFunctionList),
      DataGridCell<UserPermissionGroup>(columnName: 'userPermissionGroup', value: e.userPermissionGroup),
    ]))
        .toList();
  }

  @override
  List<DataGridRow> get rows => _usuarioData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
      cells: row.getCells().map<Widget>((e) {
        return Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(8.0),
          child: Text(e.value.toString()),
        );
      }).toList()

    );
  }

}