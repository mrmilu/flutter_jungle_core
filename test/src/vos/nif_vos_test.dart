import 'package:flutter_jungle_core/src/failures/nif_failure.dart';
import 'package:flutter_jungle_core/src/vos/nif_vos.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('NifVos Unit Tests', () {
    group('Casos Válidos', () {
      test('debe retornar Right con un NIF/DNI válido', () {
        // NIFs válidos según el algoritmo de módulo 23
        const validNifs = [
          '12345678Z', // 12345678 % 23 = 14 -> 'Z'
          '00000000T', // 0 % 23 = 0 -> 'T'
          '87654321X', // 87654321 % 23 = 10 -> 'X'
        ];

        for (final nif in validNifs) {
          final result = NifVos(nif);

          expect(result.value.isRight(), true, reason: 'Falló para NIF: $nif');
          result.value.map(
            isLeft: (l) => fail('No debería retornar fallo para: $nif'),
            isRight: (r) => expect(r, nif),
          );
        }
      });

      test('debe hacer trim a los espacios al inicio y al final', () {
        const input = '   12345678Z   ';
        final result = NifVos(input);

        expect(result.value.isRight(), true);
        result.value.map(
          isLeft: (l) => fail('No debería retornar fallo'),
          isRight: (r) => expect(r, '12345678Z'),
        );
      });
    });

    group('Casos de Fallo - Longitud', () {
      test(
        'debe retornar NifFailure.tooShort si tiene menos de 9 caracteres',
        () {
          const shortInputs = [
            '',
            '12345678', // Le falta la letra (8 caracteres)
            '1234567Z', // 7 números + letra (8 caracteres)
          ];

          for (final input in shortInputs) {
            final result = NifVos(input);

            expect(
              result.value.isLeft(),
              true,
              reason: 'Debería fallar por corto: $input',
            );
            result.value.map(
              isLeft: (l) => expect(l, isA<NifFailureTooShort>()),
              isRight: (r) => fail('No debería ser válido: $input'),
            );
          }
        },
      );

      test('debe retornar NifFailure.tooLong si tiene más de 9 caracteres', () {
        const longInputs = [
          '123456789Z', // 9 números + letra (10 caracteres)
          '12345678ZZ', // 8 números + 2 letras (10 caracteres)
        ];

        for (final input in longInputs) {
          final result = NifVos(input);

          expect(
            result.value.isLeft(),
            true,
            reason: 'Debería fallar por largo: $input',
          );
          result.value.map(
            isLeft: (l) => expect(l, isA<NifFailureTooLong>()),
            isRight: (r) => fail('No debería ser válido: $input'),
          );
        }
      });
    });

    group('Casos de Fallo - Formato y Algoritmo (Invalid)', () {
      test('debe retornar NifFailure.invalid si no cumple el formato (ej. letra minúscula o símbolos)', () {
        const invalidFormats = [
          '12345678z', // Letra minúscula (la regex exige [A-Z])
          'X2345678Z', // Letra al inicio (formato NIE, no NIF)
          '1234A678Z', // Letra intermedia
          '12345678#', // Carácter especial
        ];

        for (final input in invalidFormats) {
          final result = NifVos(input);

          expect(
            result.value.isLeft(),
            true,
            reason: 'Debería ser inválido: $input',
          );
          result.value.map(
            isLeft: (l) => expect(l, isA<NifFailureInvalid>()),
            isRight: (r) => fail('No debería ser válido: $input'),
          );
        }
      });

      test('debe retornar NifFailure.invalid si la letra de control no coincide', () {
        // Para 12345678 la letra correcta es Z, probamos con letras incorrectas
        const badChecksumNifs = ['12345678A', '12345678B', '00000000A'];

        for (final input in badChecksumNifs) {
          final result = NifVos(input);

          expect(
            result.value.isLeft(),
            true,
            reason: 'Debería fallar checksum para: $input',
          );
          result.value.map(
            isLeft: (l) => expect(l, isA<NifFailureInvalid>()),
            isRight: (r) => fail('No debería ser válido: $input'),
          );
        }
      });
    });
  });
}
