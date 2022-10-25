import 'package:soma/ssma/repository/type_repository.dart';

import '../data/type_data.dart';

class TypeController {

  final TypeRepository repository;

  TypeController(this.repository);

  late TypeData jsonDataGridSource = repository.jsonDataGridSource;

  Future getTypes() async {
    return repository.generateProductList();
  }

}