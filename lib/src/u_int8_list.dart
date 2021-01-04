import 'dart:convert';
import 'dart:typed_data';

extension Uint8ListExtensions on Uint8List{
  String asciiDecode() => ascii.decode(this);
}