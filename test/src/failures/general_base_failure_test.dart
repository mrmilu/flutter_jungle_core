import 'package:flutter_jungle_core/src/failures/general_base_failure.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('GeneralBaseFailure', () {
    final cases = <(GeneralBaseFailure, String)>[
      (const GeneralBaseFailure.unauthorized(), 'unauthorized'),
      (const GeneralBaseFailure.internalError(), 'internalError'),
      (const GeneralBaseFailure.networkError(), 'networkError'),
      (const GeneralBaseFailure.timeoutError(), 'timeoutError'),
      (
        const GeneralBaseFailure.invalidResponseFormat(),
        'invalidResponseFormat',
      ),
      (const GeneralBaseFailure.unexpectedError(), 'unexpectedError'),
    ];

    for (final (failure, expected) in cases) {
      test('when calls the $expected callback', () {
        var actual = '';
        failure.when(
          unauthorized: (_, _) => actual = 'unauthorized',
          internalError: (_, _) => actual = 'internalError',
          networkError: (_, _) => actual = 'networkError',
          timeoutError: (_, _) => actual = 'timeoutError',
          invalidResponseFormat: (_, _) => actual = 'invalidResponseFormat',
          unexpectedError: (_, _) => actual = 'unexpectedError',
        );

        expect(actual, expected);
      });

      test('map maps $expected to a value', () {
        final actual = failure.map(
          unauthorized: (_) => 'unauthorized',
          internalError: (_) => 'internalError',
          networkError: (_) => 'networkError',
          timeoutError: (_) => 'timeoutError',
          invalidResponseFormat: (_) => 'invalidResponseFormat',
          unexpectedError: (_) => 'unexpectedError',
        );

        expect(actual, expected);
      });

      test('typeError preserves the $expected failure type and details', () {
        final original = GeneralBaseFailure.fromString(expected, 'Custom');
        final typedFailure = original.typeError;

        expect(typedFailure.runtimeType, original.runtimeType);
        expect(typedFailure.code, original.code);
        expect(typedFailure.message, original.message);
      });
    }
  });
}
