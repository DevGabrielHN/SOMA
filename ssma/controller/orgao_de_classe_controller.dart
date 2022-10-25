import 'package:soma/ssma/model/orgao_de_classe_model.dart';
import 'package:soma/ssma/repository/orgao_de_classe_repository.dart';

class OrgaoDeClasseController {

  final OrgaoDeClasseRepository repository;

  OrgaoDeClasseController(this.repository);

  List<OrgaoDeClasseModal> getOrgaoDeClasseData() {
    return repository.getOrgaoDeClasse();
  }



}