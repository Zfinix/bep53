import 'package:flutter_test/flutter_test.dart';

import 'package:bep53/bep53.dart';

void main() {
  group('Bep53 Tests - ', () {
    test('Bep53.composeRange()', () {
      expect(
        Bep53.composeRange([1, 2, 3, 4]),
        equals(['1-4']),
      );

      expect(
        Bep53.composeRange([5, 6, 7, 8, 11, 12, 13, 1, 2, 3, 5]),
        equals(['5-8', '11-13', '1-3', '5']),
      );

      expect(
        Bep53.composeRange(
          [1, 2, 3, 4, 5, 6, 7, 8, 9, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 0, 1, 2],
        ),
        equals(['1-9', '2-10', '10', '0-2']),
      );
    });

    test('Bep53.parseRange()', () {
      expect(
        Bep53.parseRange(['1-4']),
        equals([1, 2, 3, 4]),
      );

      expect(
        Bep53.parseRange(['5-8', '11-13', '1-3', '5']),
        equals([5, 6, 7, 8, 11, 12, 13, 1, 2, 3, 5]),
      );

      expect(
        [1, 2, 3, 4, 5, 6, 7, 8, 9, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 0, 1, 2],
        equals(
          Bep53.parseRange(['1-9', '2-10', '10', '0-2']),
        ),
      );
    });
  });
}
