extension DoubleExtensions on double {
  bool inRange(double min, double max) => min <= this && this <= max;
}