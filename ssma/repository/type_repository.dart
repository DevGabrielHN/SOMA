import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:soma/ssma/data/type_data.dart';
import 'package:soma/ssma/http/type/type_api.dart';
import 'package:soma/ssma/model/type_model.dart';

class TypeRepository with ChangeNotifier {

  late TypeData jsonDataGridSource;

  List<TypeModel> typeList = [];

  Future generateProductList() async {
    var response = await http.get(Uri.parse(TypeApi.GET_TYPES));
    var list = json.decode(response.body).cast<Map<String, dynamic>>();
    typeList =
    await list.map<TypeModel>((json) => TypeModel.fromJson(json)).toList();
    jsonDataGridSource = TypeData(typeList);
    return typeList;
  }




}