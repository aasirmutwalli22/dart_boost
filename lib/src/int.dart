extension IntExtension on int {
  bool isZero() => this == 0;
  bool isOne() => this == 1;
  int inc() => this + 1;
  int dec() => this - 1;
  Duration ms() => Duration(milliseconds: this);
  Duration us() => Duration(microseconds: this);
  Duration sec() => Duration(seconds: this);
  Duration min() => Duration(minutes: this);
  Duration hr() => Duration(hours: this);
  Duration day() => Duration(days: this);
}