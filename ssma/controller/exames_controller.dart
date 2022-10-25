import 'package:soma/ssma/model/exames_model.dart';
import 'package:soma/ssma/repository/exames_repository.dart';

class ExamesController {

  final ExamesRepository repository;

  ExamesController(this.repository);

  List<ExamesModel> getExamesData() {
    return repository.getEmployeeData();
  }

}