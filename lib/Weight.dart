class Weight {
  final double value;
  Weight(this.value);

  //gm to kg
  double get fromgmtokg {
    return value * 1000;
  }

  double get fromkgtogm {
    return value / 1000;
  }
}
