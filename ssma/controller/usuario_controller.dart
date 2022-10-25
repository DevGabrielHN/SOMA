import 'dart:html';

import 'package:soma/ssma/model/usuario_model.dart';
import 'package:soma/ssma/repository/usuario_repository.dart';

class UsuarioController {

  final UsuarioRepository repository;

  UsuarioController(this.repository);

  List<UsuarioModal> getUsuarioData() {
    return repository.getEmployeeData();
  }

}