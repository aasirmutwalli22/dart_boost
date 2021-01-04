import 'dart:convert';

extension ObjectExtensions on Object {
  String jsonEncode() => json.encode(this);
  bool isNull() => this == null;              // check if works
}