import 'package:flutter_jungle_core/src/extensions/iterable_extension.dart';
import 'package:flutter_jungle_core/src/vos/email_vos.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('IterableExtension', () {
    group('firstWhereOrNull', () {
      test('returns the first element matching the test', () {
        expect([1, 2, 3, 4].firstWhereOrNull((e) => e.isEven), 2);
      });

      test('returns null when no element matches', () {
        expect([1, 3, 5].firstWhereOrNull((e) => e.isEven), isNull);
      });

      test('returns null for an empty iterable', () {
        expect(<int>[].firstWhereOrNull((_) => true), isNull);
      });

      test('works with any iterable', () {
        expect({'a', 'bb'}.firstWhereOrNull((e) => e.length == 2), 'bb');
      });
    });
  });

  group('IterableOfValueObject', () {
    group('areValid', () {
      test('returns true when every value object is valid', () {
        final list = [EmailVos('a@test.com'), EmailVos('b@test.com')];

        expect(list.areValid, isTrue);
      });

      test('returns false when any value object is invalid', () {
        final list = [EmailVos('a@test.com'), EmailVos('invalid')];

        expect(list.areValid, isFalse);
      });

      test('returns true for an empty iterable', () {
        expect(<EmailVos>[].areValid, isTrue);
      });
    });
  });
}
