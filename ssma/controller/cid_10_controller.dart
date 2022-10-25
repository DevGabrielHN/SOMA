import 'package:soma/ssma/model/cid_10_model.dart';
import 'package:soma/ssma/repository/cid_10_repository.dart';

class Cid10Controller {

  final Cid10Repository repository;

  Cid10Controller(this.repository);

  List<Cid10Model> getCid10Data() {
    return repository.getEmployeeData();
  }

}