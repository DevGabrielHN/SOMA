import 'package:soma/ssma/model/exames_model.dart';

class ExamesRepository {

  List<ExamesModel> getEmployeeData() {
    
    return [
      ExamesModel(10001, 'James', 'Project Lead', 20000),
      ExamesModel(10002, 'Kathryn', 'Manager', 30000),
      ExamesModel(10003, 'Lara', 'Developer', 15000),
      ExamesModel(10004, 'Michael', 'Designer', 15000),
      ExamesModel(10005, 'Martin', 'Developer', 15000),
      ExamesModel(10006, 'Newberry', 'Developer', 15000),
      ExamesModel(10007, 'Balnc', 'Developer', 15000),
      ExamesModel(10008, 'Perry', 'Developer', 15000),
      ExamesModel(10009, 'Gable', 'Developer', 15000),
      ExamesModel(10010, 'Grimes', 'Developer', 15000)
    ];
  }
}