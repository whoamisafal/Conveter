class Liquid {
  final double value;
  Liquid(this.value);

  double toLiter() {
    return value / 1000;
  }

  double toMl() {
    return value * 1000;
  }
}
