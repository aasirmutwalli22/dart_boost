import 'dart:convert';

extension ObjectExtensions on Object {
  String jsonEncode() => json.encode(this);
  /// check of works
  bool isNull() => this == null;
}