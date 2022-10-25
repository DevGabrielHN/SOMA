import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:soma/ssma/view/pages/type/table_type.dart';
import 'package:soma/ssma/view/uteis/cabecalho.dart';

class Type extends StatelessWidget {
  const Type({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      child:  Cabecalho(
        drawer: true,
        page: 'type.Cabecalho.Type'.tr,
        body: Container(
          child: TableType(),
        ),),
    );
  }
}
