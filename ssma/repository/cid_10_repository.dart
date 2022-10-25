import 'package:soma/ssma/model/cid_10_model.dart';
import 'package:soma/ssma/model/exames_model.dart';

class Cid10Repository {

  List<Cid10Model> getEmployeeData() {

    return [
      Cid10Model(10001, 'James', 'Project Lead', 20000),
      Cid10Model(10002, 'Kathryn', 'Manager', 30000),
      Cid10Model(10003, 'Lara', 'Developer', 15000),
      Cid10Model(10004, 'Michael', 'Designer', 15000),
      Cid10Model(10005, 'Martin', 'Developer', 15000),
      Cid10Model(10006, 'Newberry', 'Developer', 15000),
      Cid10Model(10007, 'Balnc', 'Developer', 15000),
      Cid10Model(10008, 'Perry', 'Developer', 15000),
      Cid10Model(10009, 'Gable', 'Developer', 15000),
      Cid10Model(10010, 'Grimes', 'Developer', 15000)
    ];
  }
}