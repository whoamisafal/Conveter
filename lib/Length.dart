class Length {
  final double value;

  Length(this.value);

  double get fromcmtom {
    return value / 100;
  }

  double get frommtocm {
    return value * 100;
  }

  double get frommmtocm {
    return value * 10;
  }

  double get fromcmtomm {
    return value / 10;
  }

  double get fromkmtom {
    return value * 1000;
  }

  double get frommtokm {
    return value / 1000;
  }
}
