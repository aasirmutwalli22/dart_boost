import 'dart:convert';
import 'dart:typed_data';
extension StringExtensions on String{
  Uint8List asciiEncode() => ascii.encode(this);
  dynamic jsonDecode() => json.decode(this);
  double toDouble() => double.parse(this ?? '0');
  int toInt() => int.parse(this ?? '0');
}