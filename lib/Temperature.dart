class Temperature {
  final double value;
  Temperature(this.value);

  // from c to k
  double get fromctok {
    return 273.15 + value;
  }

  // from k to c

  double get fromktoc {
    return value - 273.15;
  }

  // from k to f
  double get fromktof {
    return (value - 273.15) * (9 / 5) + 32;
  }

  // from f to k

  double get fromftok {
    return (value - 32) * (5 / 9) + 273.15;
  }

  // from c to f

  double get fromctof {
    return (value * (9 / 5)) + 32;
  }

  // from f to c

  double get fromftoc {
    return (value - 32) * (5 / 9);
  }
}
