import 'package:flutter_test/flutter_test.dart';
import 'package:simple_route_text/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('PageTwoViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
