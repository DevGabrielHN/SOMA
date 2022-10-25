import 'package:soma/ssma/http/host_api.dart';

class TypeApi {
  static const GET_TYPES = HostApi.HOST + '/getTypes';
  static const POST = HostApi.HOST + '/post';
  static const DELETE = HostApi.HOST + '/delete';
  static const FIND_TYPES_BY_DOMAIN = HostApi.HOST + '/findTypesByDomain';
  static const GET_TYPES_BY_FLEX_VALUE = HostApi.HOST + ' /getTypesByFlexValue';
  static const UPDATE = HostApi.HOST + '/update';
}