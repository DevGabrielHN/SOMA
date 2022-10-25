import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soma/ssma/view/uteis/cabecalho.dart';

class Configuracao extends StatelessWidget {
  const Configuracao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Cabecalho(
        page: 'Configuracao.Cabecalho.Configuração'.tr,
        drawer: false,
        body: Container(child: Center(child: Text('Configuração'))),
        );
  }
}
