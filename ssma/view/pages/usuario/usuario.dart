import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:soma/ssma/view/pages/usuario/table_usuario.dart';
import 'package:soma/ssma/view/uteis/cabecalho.dart';

class Usuario extends StatelessWidget {
  const Usuario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Cabecalho(
      drawer: true,
      page: 'usuario.Cabecalho.Usuario'.tr,
      body: Container(
        child: TableUsuario(),
      ),);
  }
}
