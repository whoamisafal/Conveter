//library Conveter;

import 'package:flutter/material.dart';
import 'const.dart';
import 'Liquid.dart';
import 'Length.dart';
import 'Temperature.dart';
import 'Weight.dart';

class CConveter {
  final double value;
  final CType cType;
  final String from;
  final String to;
  CConveter(
      {@required this.value,
      @required this.cType,
      @required this.from,
      @required this.to});

  double convert() {
    // for liquid

    if (cType == CType.Liquid) {
      if (to.toString() == Unit.ml && from.toString() == Unit.l) {
        return Liquid(value).toMl();
      }
      if (to.toString() == Unit.l && from.toString() == Unit.ml) {
        return Liquid(value).toLiter();
      }
      if (to.toString() == from.toString()) {
        return value;
      } else {
        throw "Unit not found make sure you have use correct unit";
      }
    }

    //for temperature
    if (cType == CType.Temperature) {
      // from K to C
      if (to.toString() == Unit.c && from.toString() == Unit.k) {
        return Temperature(value).fromktoc;
      }

      // from C to K
      if (from.toString() == Unit.c && to.toString() == Unit.k) {
        return Temperature(value).fromctok;
      }

      // from C to f
      if (from.toString() == Unit.c && to.toString() == Unit.f) {
        return Temperature(value).fromctof;
      }
      // from F to c
      if (to.toString() == Unit.c && from.toString() == Unit.f) {
        return Temperature(value).fromftoc;
      }
      // From K to F
      if (to.toString() == Unit.f && from.toString() == Unit.k) {
        return Temperature(value).fromktof;
      }

      // From F to k
      if (from.toString() == Unit.f && to.toString() == Unit.k) {
        return Temperature(value).fromktof;
      }
    }

    // For Weight
    if (cType == CType.Weight) {
      if (to.toString() == Unit.Gram && from.toString() == Unit.Kg) {
        return Weight(value).fromkgtogm;
      }
      // gm to kg

      if (to.toString() == Unit.Kg && from.toString() == Unit.Gram) {
        return Weight(value).fromkgtogm;
      }
    }

    //for length
    if (cType == CType.Length) {
      if (to.toString() == from.toString()) {
        return value;
      }
      // m to cm
      if (to.toString() == Unit.cm && from.toString() == Unit.m) {
        return Length(value).frommtocm;
      }
      // cm to m
      if (from.toString() == Unit.cm && to.toString() == Unit.m) {
        return Length(value).fromcmtom;
      }
      // cm to mm

      if (to.toString() == Unit.mm && from.toString() == Unit.cm) {
        return Length(value).fromcmtomm;
      }

      //mm to cm

      if (from.toString() == Unit.mm && to.toString() == Unit.cm) {
        return Length(value).frommmtocm;
      }

      //m to km
      if (from.toString() == Unit.m && to.toString() == Unit.km) {
        return Length(value).frommtokm;
      }

      //km to m
      if (to.toString() == Unit.m && from.toString() == Unit.km) {
        return Length(value).fromkmtom;
      }

      //
    } else {
      throw "Unit not found make sure you have use correct unit";
    }
    return null;
  }
}
