import 'package:flutter_jungle_core/flutter_jungle_core.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DescriptionFailure Tests', () {
    group('Factory', () {
      test('should create DescriptionFailureEmpty with default values', () {
        const failure = DescriptionFailure.empty();

        expect(failure.code, 'empty');
        expect(failure.maxLength, 0);
      });

      test('should create DescriptionFailureInvalid with default values', () {
        const failure = DescriptionFailure.invalid();

        expect(failure.code, 'invalid');
        expect(failure.maxLength, 0);
      });

      test('should create DescriptionFailureTooLong with default values', () {
        const failure = DescriptionFailure.tooLong();

        expect(failure.code, 'tooLong');
        expect(failure.maxLength, 320);
      });

      test('should preserve custom values', () {
        const failure = DescriptionFailure.tooLong(code: 'custom', length: 500);

        expect(failure.code, 'custom');
        expect(failure.maxLength, 500);
      });
    });
  });
}
