import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:soma/ssma/view/pages/orgao_de_classe/table_orgao_de_classe.dart';
import 'package:soma/ssma/view/uteis/cabecalho.dart';

class orgaDeClasse extends StatefulWidget {
  const orgaDeClasse({Key? key}) : super(key: key);

  @override
  State<orgaDeClasse> createState() => _orgaDeClasseState();
}

class _orgaDeClasseState extends State<orgaDeClasse> {
  @override
  Widget build(BuildContext context) {
    return Cabecalho(
      drawer: true,
        page: 'orgao_de_classe.Cabecalho.Órgão de Classe'.tr,
        body: Container(
            child: TableOrgaoDeClasse(),
        ),
    );
  }
}
