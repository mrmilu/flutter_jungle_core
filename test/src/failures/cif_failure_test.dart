import 'package:flutter_jungle_core/flutter_jungle_core.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CifFailure Tests', () {
    group('Factory', () {
      test('should create CifFailureEmpty with default values', () {
        const failure = CifFailure.empty();

        expect(failure.code, 'empty');
        expect(failure.maxLength, 0);
      });

      test('should create CifFailureInvalid with default values', () {
        const failure = CifFailure.invalid();

        expect(failure.code, 'invalid');
        expect(failure.maxLength, 0);
      });

      test('should create CifFailureTooLong with default values', () {
        const failure = CifFailure.tooLong();

        expect(failure.code, 'tooLong');
        expect(failure.maxLength, 9);
      });

      test('should create CifFailureTooShort with default values', () {
        const failure = CifFailure.tooShort();

        expect(failure.code, 'tooShort');
        expect(failure.maxLength, 9);
      });

      test('should preserve custom values', () {
        const tooLong = CifFailure.tooLong(code: 'customLong', length: 10);
        const tooShort = CifFailure.tooShort(code: 'customShort', length: 8);

        expect(tooLong.code, 'customLong');
        expect(tooLong.maxLength, 10);
        expect(tooShort.code, 'customShort');
        expect(tooShort.maxLength, 8);
      });
    });
  });
}
