import 'package:flutter_jungle_core/src/failures/nie_failure.dart';
import 'package:flutter_jungle_core/src/vos/nie_vos.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('NieVos Unit Tests', () {
    group('Casos Válidos', () {
      test(
        'debe retornar Right con NIEs válidos para los prefijos X, Y y Z',
        () {
          // NIEs con letra de control calculada mediante módulo 23
          const validNies = [
            'X1234567L', // Prefijo X (01234567 % 23 = 11 -> 'L')
            'Y1234567X', // Prefijo Y (11234567 % 23 = 10 -> 'X')
            'Z1234567R', // Prefijo Z (21234567 % 23 = 1 -> 'R')
          ];

          for (final nie in validNies) {
            final result = NieVos(nie);

            expect(
              result.value.isRight(),
              true,
              reason: 'Falló para NIE: $nie',
            );
            result.value.map(
              isLeft: (l) => fail('No debería retornar fallo para: $nie'),
              isRight: (r) => expect(r, nie),
            );
          }
        },
      );

      test(
        'debe convertir a mayúsculas y eliminar espacios laterales con trim',
        () {
          const input = '   x1234567l   ';
          final result = NieVos(input);

          expect(result.value.isRight(), true);
          result.value.map(
            isLeft: (l) => fail('No debería retornar fallo'),
            isRight: (r) => expect(r, 'X1234567L'),
          );
        },
      );
    });

    group('Casos de Fallo - Invalid', () {
      test(
        'debe retornar NieFailure.invalid si la letra inicial no es X, Y o Z',
        () {
          // 'A' o 'B' corresponden a NIF o CIF, no a NIE
          const invalidPrefixes = ['A1234567L', 'B1234567X', '11234567L'];

          for (final input in invalidPrefixes) {
            final result = NieVos(input);

            expect(
              result.value.isLeft(),
              true,
              reason: 'Debería fallar para: $input',
            );
            result.value.map(
              isLeft: (l) => expect(l, isA<NieFailureInvalid>()),
              isRight: (r) => fail('No debería ser válido: $input'),
            );
          }
        },
      );

      test('debe retornar NieFailure.invalid si la longitud o estructura es incorrecta', () {
        const invalidFormats = [
          '',
          'X123456L', // 6 números en vez de 7
          'X12345678L', // 8 números en vez de 7
          'X123A567L', // Letra intermedia
          'X12345671', // Número al final en vez de letra
        ];

        for (final input in invalidFormats) {
          final result = NieVos(input);

          expect(
            result.value.isLeft(),
            true,
            reason: 'Debería fallar para: $input',
          );
          result.value.map(
            isLeft: (l) => expect(l, isA<NieFailureInvalid>()),
            isRight: (r) => fail('No debería ser válido: $input'),
          );
        }
      });

      test(
        'debe retornar NieFailure.invalid si la letra de control no coincide',
        () {
          // X1234567L es el correcto, probamos con letras de control alteradas
          const badChecksumNies = ['X1234567A', 'Y1234567B', 'Z1234567C'];

          for (final input in badChecksumNies) {
            final result = NieVos(input);

            expect(
              result.value.isLeft(),
              true,
              reason: 'Debería fallar checksum para: $input',
            );
            result.value.map(
              isLeft: (l) => expect(l, isA<NieFailureInvalid>()),
              isRight: (r) => fail('No debería ser válido: $input'),
            );
          }
        },
      );
    });
  });
}
