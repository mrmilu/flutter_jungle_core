import 'package:flutter_jungle_core/src/failures/iban_failure.dart';
import 'package:flutter_jungle_core/src/vos/iban_vos.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('IbanVos Unit Tests', () {
    group('Casos Válidos', () {
      test('debe retornar Right con un IBAN español totalmente válido', () {
        // IBAN español estándar válido (ES + mod-97 + Banco/Sucursal/DC/Cuenta válidos)
        const validIbans = ['ES9121000418450200051332'];

        for (final iban in validIbans) {
          final result = IbanVos(iban);

          expect(
            result.value.isRight(),
            true,
            reason: 'Falló para IBAN: $iban',
          );
          result.value.map(
            isLeft: (l) => fail('No debería retornar fallo para: $iban'),
            isRight: (r) => expect(r, iban),
          );
        }
      });

      test('debe hacer trim a los espacios al inicio y al final', () {
        const input = '   ES9121000418450200051332   ';
        final result = IbanVos(input);

        expect(result.value.isRight(), true);
        result.value.map(
          isLeft: (l) => fail('No debería retornar fallo'),
          isRight: (r) => expect(r, 'ES9121000418450200051332'),
        );
      });
    });

    group('Casos de Fallo - Longitud', () {
      test(
        'debe retornar IbanFailure.tooShort si tiene menos de 24 caracteres',
        () {
          const shortInputs = [
            '',
            'ES2114650100',
            'ES211465010072203087629', // 23 caracteres
          ];

          for (final input in shortInputs) {
            final result = IbanVos(input);

            expect(
              result.value.isLeft(),
              true,
              reason: 'Debería fallar por corto: $input',
            );
            result.value.map(
              isLeft: (l) => expect(l, isA<IbanFailureTooShort>()),
              isRight: (r) => fail('No debería ser válido: $input'),
            );
          }
        },
      );

      test(
        'debe retornar IbanFailure.tooLong si tiene más de 24 caracteres',
        () {
          const longInputs = [
            'ES21146501007220308762930', // 25 caracteres
            'ES2114650100722030876293000',
          ];

          for (final input in longInputs) {
            final result = IbanVos(input);

            expect(
              result.value.isLeft(),
              true,
              reason: 'Debería fallar por largo: $input',
            );
            result.value.map(
              isLeft: (l) => expect(l, isA<IbanFailureTooLong>()),
              isRight: (r) => fail('No debería ser válido: $input'),
            );
          }
        },
      );
    });

    group('Casos de Fallo - Algoritmo y Formato (Invalid)', () {
      test(
        'debe retornar IbanFailure.invalid si no cumple con la regex inicial',
        () {
          const invalidFormats = [
            '122114650100722030876293', // Empieza con números en vez de letras de país
            'ESXX14650100722030876293', // No tiene 2 dígitos tras el código de país
            'ES211465010072203087629#', // Carácter especial no permitido
          ];

          for (final input in invalidFormats) {
            final result = IbanVos(input);

            expect(result.value.isLeft(), true);
            result.value.map(
              isLeft: (l) => expect(l, isA<IbanFailureInvalid>()),
              isRight: (r) => fail('No debería aceptar formato: $input'),
            );
          }
        },
      );

      test(
        'debe retornar IbanFailure.invalid si falla la verificación mod-97',
        () {
          // ES2114650100722030876293 es el válido, cambiamos dígitos mod-97 iniciales
          const badChecksumIbans = [
            'ES0014650100722030876293',
            'ES9914650100722030876293',
          ];

          for (final input in badChecksumIbans) {
            final result = IbanVos(input);

            expect(result.value.isLeft(), true);
            result.value.map(
              isLeft: (l) => expect(l, isA<IbanFailureInvalid>()),
              isRight: (r) => fail('Debería fallar mod-97 para: $input'),
            );
          }
        },
      );

      test('debe retornar IbanFailure.invalid si fallan los dígitos de control españoles (DC)', () {
        // Mantiene el formato pero alteramos los dígitos de control nacionales (posiciones 12-13)
        const badControlDigitsIbans = [
          'ES2114650100992030876293', // DC alterado a '99'
          'ES2114650100002030876293', // DC alterado a '00'
        ];

        for (final input in badControlDigitsIbans) {
          final result = IbanVos(input);

          expect(result.value.isLeft(), true);
          result.value.map(
            isLeft: (l) => expect(l, isA<IbanFailureInvalid>()),
            isRight: (r) => fail('Debería fallar validación DC para: $input'),
          );
        }
      });
    });
  });
}
