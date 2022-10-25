import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:soma/ssma/view/uteis/cabecalho.dart';
import 'table_exames.dart';

class Exames extends StatefulWidget {
  const Exames({Key? key}) : super(key: key);

  @override
  State<Exames> createState() => _ExamesState();
}

class _ExamesState extends State<Exames> {
  @override
  Widget build(BuildContext context) {
    return Cabecalho(
      drawer: true,
        page: 'exames.Cabecalho.Exames'.tr,
        body: Container(
          child: TableExames(),
        ));
  }
}