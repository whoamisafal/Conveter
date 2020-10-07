import 'package:flutter_test/flutter_test.dart';

import '../lib/Conveter.dart';
import '../lib/const.dart';

void main() {
  test('adds one to input values', () {
    CConveter conveter = CConveter(
        value: 1500, cType: CType.Weight, from: Unit.Gram, to: Unit.Kg);
    print(conveter.convert());
  });
}
