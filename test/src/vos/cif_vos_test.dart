import 'package:flutter_jungle_core/src/failures/cif_failure.dart';
import 'package:flutter_jungle_core/src/vos/cif_vos.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CifVos Unit Tests', () {
    group('Casos Válidos', () {
      test('debe retornar Right con CIFs válidos terminados en número', () {
        // CIFs reales / matemáticamente válidos (Sociedad Anónima, Sociedad Limitada)
        const validCifs = [
          'A28015865', // Telefónica S.A.
          'B81167413', // CIF con control numérico válido
        ];

        for (final cif in validCifs) {
          final result = CifVos(cif);

          expect(result.value.isRight(), true, reason: 'Falló para CIF: $cif');
          result.value.map(
            isLeft: (l) => fail('No debería retornar fallo para: $cif'),
            isRight: (r) => expect(r, cif),
          );
        }
      });

      test('debe retornar Right con CIFs válidos terminados en letra', () {
        // Entidades públicas, corporaciones u organismos con letra de control
        const validLetterCifs = [
          'P2800001F', // Entidad pública (control 6 -> 'F')
          'Q2800001F', // Organismo autónomo (control 6 -> 'F')
        ];

        for (final cif in validLetterCifs) {
          final result = CifVos(cif);

          expect(result.value.isRight(), true, reason: 'Falló para CIF: $cif');
          result.value.map(
            isLeft: (l) => fail('No debería retornar fallo para: $cif'),
            isRight: (r) => expect(r, cif),
          );
        }
      });

      test('debe convertir a mayúsculas y aplicar trim automáticamente', () {
        const input = '  a28015865  ';
        final result = CifVos(input);

        expect(result.value.isRight(), true);
        result.value.map(
          isLeft: (l) => fail('No debería retornar fallo'),
          isRight: (r) => expect(r, 'A28015865'),
        );
      });
    });

    group('Casos de Fallo - Longitud', () {
      test(
        'debe retornar CifFailure.tooShort si tiene menos de 9 caracteres',
        () {
          const shortInputs = ['', 'A1234567', 'B123'];

          for (final input in shortInputs) {
            final result = CifVos(input);

            expect(
              result.value.isLeft(),
              true,
              reason: 'Debería fallar por corto: $input',
            );
            result.value.map(
              isLeft: (l) => expect(l, isA<CifFailureTooShort>()),
              isRight: (r) => fail('No debería ser válido: $input'),
            );
          }
        },
      );

      test('debe retornar CifFailure.tooLong si tiene más de 9 caracteres', () {
        const longInputs = ['A280158659', 'B8116741300'];

        for (final input in longInputs) {
          final result = CifVos(input);

          expect(
            result.value.isLeft(),
            true,
            reason: 'Debería fallar por largo: $input',
          );
          result.value.map(
            isLeft: (l) => expect(l, isA<CifFailureTooLong>()),
            isRight: (r) => fail('No debería ser válido: $input'),
          );
        }
      });
    });

    group('Casos de Fallo - Formato y Algoritmo (Invalid)', () {
      test('debe retornar CifFailure.invalid si la primera letra no es un tipo de entidad permitido', () {
        // 'X', 'Y', 'Z' son de NIE/NIF, no de CIF
        const invalidFirstLetters = ['X28015865', 'Z81167413', 'I12345678'];

        for (final cif in invalidFirstLetters) {
          final result = CifVos(cif);

          expect(result.value.isLeft(), true);
          result.value.map(
            isLeft: (l) => expect(l, isA<CifFailureInvalid>()),
            isRight: (r) => fail('No debería aceptar letra inicial: $cif'),
          );
        }
      });

      test('debe retornar CifFailure.invalid si no cumple con la estructura 1 letra + 7 números + 1 letra/número', () {
        const invalidFormats = [
          'AA8015865', // Dos letras al inicio
          'A2801586%', // Carácter especial al final
          '128015865', // Empieza por número
        ];

        for (final cif in invalidFormats) {
          final result = CifVos(cif);

          expect(result.value.isLeft(), true);
          result.value.map(
            isLeft: (l) => expect(l, isA<CifFailureInvalid>()),
            isRight: (r) => fail('No debería aceptar formato: $cif'),
          );
        }
      });

      test('debe retornar CifFailure.invalid si el dígito/letra de control es erróneo', () {
        // A28015865 es el válido; probamos con dígitos de control alterados
        const wrongChecksumCifs = [
          'A28015860', // Dígito de control incorrecto (debería ser 5)
          'P2807900Z', // Letra de control incorrecta
        ];

        for (final cif in wrongChecksumCifs) {
          final result = CifVos(cif);

          expect(result.value.isLeft(), true);
          result.value.map(
            isLeft: (l) => expect(l, isA<CifFailureInvalid>()),
            isRight: (r) =>
                fail('Debería rechazar checksum erróneo para: $cif'),
          );
        }
      });
    });
  });
}
