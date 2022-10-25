import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soma/ssma/view/pages/configura%C3%A7%C3%A3o/configuracao.dart';
import 'package:soma/ssma/view/pages/home/home.dart';
import 'package:soma/ssma/view/uteis/local_string.dart';

import 'ssma/view/pages/cadastro/cadastro_exame.dart';
import 'ssma/view/pages/cadastro/cadastro_usuario.dart';
import 'ssma/view/pages/cid_10/cid_10.dart';
import 'ssma/view/pages/exames/exames.dart';
import 'ssma/view/pages/login/login.dart';
import 'ssma/view/pages/orgao_de_classe/orgao_de_classe.dart';
import 'ssma/view/pages/type/teste2.dart';
import 'ssma/view/pages/usuario/usuario.dart';
import 'ssma/view/pages/type/type.dart';


class TwoApp extends StatefulWidget {
  const TwoApp({Key? key}) : super(key: key);

  @override
  State<TwoApp> createState() => _TwoAppState();

  static _TwoAppState? of(BuildContext context) =>
      context.findAncestorStateOfType<_TwoAppState>();
}

class _TwoAppState extends State<TwoApp> {

  @override
  Widget build(BuildContext context) {
    final ThemeData tema = ThemeData();
    return GetMaterialApp(
      translations: LocalString(),
      locale:  Locale('pt','BR'),
      theme: tema.copyWith(
        colorScheme: tema.colorScheme.copyWith(
          primary: Color.fromRGBO(28, 37, 61, 1),
          secondary: Color.fromRGBO(23, 54, 129, 1),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const Home(),
      //initialRoute: '/login',
      routes: {
        '/type': (_) => Type(),
        '/usuario': (_) => Usuario(),
        '/orgaoDeClasse': (_) => orgaDeClasse(),
        '/cid10': (_) => Cid10(),
        '/exames': (_) => Exames(),
        '/cadastroUsuario': (_) => CadastroUsuario(),
        '/cadastroExame': (_) => CadastroExame(),
        '/login': (_) => LoginPage(),
        '/configuracao': (_) => Configuracao(),
        '/teste2': (_) => JsonDataGrid2(),
      },
    );

  }
}
