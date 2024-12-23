import 'package:flutter_test/flutter_test.dart';
import 'package:clickandcare/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('FavoritesViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
