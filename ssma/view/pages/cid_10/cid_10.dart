import 'package:flutter/material.dart';
import 'package:soma/ssma/view/pages/cid_10/table_cid_10.dart';
import 'package:soma/ssma/view/uteis/cabecalho.dart';

class Cid10 extends StatefulWidget {
  const Cid10({Key? key}) : super(key: key);

  @override
  State<Cid10> createState() => _Cid10State();
}

class _Cid10State extends State<Cid10> {
  @override
  Widget build(BuildContext context) {
    return Cabecalho(
      drawer: true,
        page: 'CID 10',
        body: Container(
          child: TableCid10(),
        ));
  }
}
