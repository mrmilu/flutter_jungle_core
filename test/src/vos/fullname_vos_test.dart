import 'package:flutter_jungle_core/src/failures/fullname_failure.dart';
import 'package:flutter_jungle_core/src/vos/fullname_vos.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FullnameVos Unit Tests', () {
    group('Casos Válidos', () {
      test('debe retornar Right con un nombre simple válido', () {
        const input = 'Juan';
        final result = FullnameVos(input);

        expect(result.value.isRight(), true);
        result.value.map(
          isLeft: (l) => fail('No debería retornar un fallo'),
          isRight: (r) => expect(r, 'Juan'),
        );
      });

      test('debe retornar Right con nombre y apellidos válidos', () {
        const input = 'María del Carmen';
        final result = FullnameVos(input);

        expect(result.value.isRight(), true);
        result.value.map(
          isLeft: (l) => fail('No debería retornar un fallo'),
          isRight: (r) => expect(r, 'María del Carmen'),
        );
      });

      test('debe permitir caracteres especiales en español (ñ, tildes)', () {
        const input = 'Iñigo Peña';
        final result = FullnameVos(input);

        expect(result.value.isRight(), true);
        result.value.map(
          isLeft: (l) => fail('No debería retornar un fallo'),
          isRight: (r) => expect(r, 'Iñigo Peña'),
        );
      });

      test('debe hacer trim a los espacios al inicio y al final', () {
        const input = '   Carlos Ruiz   ';
        final result = FullnameVos(input);

        expect(result.value.isRight(), true);
        result.value.map(
          isLeft: (l) => fail('No debería retornar un fallo'),
          isRight: (r) => expect(r, 'Carlos Ruiz'),
        );
      });
    });

    group('Casos de Fallo - Empty', () {
      test(
        'debe retornar FullnameFailure.empty cuando el input está vacío',
        () {
          const input = '';
          final result = FullnameVos(input);

          expect(result.value.isLeft(), true);
          result.value.map(
            isLeft: (l) => expect(l, const FullnameFailure.empty()),
            isRight: (r) => fail('Debería retornar fallo'),
          );
        },
      );

      test('debe retornar FullnameFailure.empty cuando el input solo contiene espacios', () {
        const input = '   ';
        final result = FullnameVos(input);

        expect(result.value.isLeft(), true);
        result.value.map(
          isLeft: (l) => expect(l, const FullnameFailure.empty()),
          isRight: (r) => fail('Debería retornar fallo'),
        );
      });
    });

    group('Casos de Fallo - Invalid', () {
      test(
        'debe retornar FullnameFailure.invalid si contiene números o símbolos',
        () {
          const inputs = ['Juan123', 'Ana@Lopez', 'Pedro_Gomez'];

          for (final input in inputs) {
            final result = FullnameVos(input);
            expect(result.value.isLeft(), true);
            result.value.map(
              isLeft: (l) => expect(l, const FullnameFailure.invalid()),
              isRight: (r) => fail('Debería fallar para input: $input'),
            );
          }
        },
      );

      test('debe retornar FullnameFailure.invalid si alguna palabra tiene menos de 2 letras', () {
        const input = 'A Perez'; // 'A' tiene 1 letra
        final result = FullnameVos(input);

        expect(result.value.isLeft(), true);
        result.value.map(
          isLeft: (l) => expect(l, const FullnameFailure.invalid()),
          isRight: (r) =>
              fail('Debería fallar cuando una palabra tiene menos de 2 letras'),
        );
      });

      test('debe retornar FullnameFailure.invalid si supera las 4 palabras permitidas', () {
        const input = 'Juan Carlos Perez Gomez Silva'; // 5 palabras
        final result = FullnameVos(input);

        expect(result.value.isLeft(), true);
        result.value.map(
          isLeft: (l) => expect(l, const FullnameFailure.invalid()),
          isRight: (r) => fail('Debería fallar cuando tiene más de 4 palabras'),
        );
      });
    });

    group('Casos de Fallo - TooLong', () {
      test(
        'debe retornar FullnameFailure.tooLong si supera los 30 caracteres',
        () {
          // "Alejandrina Constantina de la Trinidad" tiene más de 30 caracteres
          const input = 'Alejandrina Constantina Trinidad'; // 32 caracteres
          final result = FullnameVos(input);

          expect(result.value.isLeft(), true);
          result.value.map(
            isLeft: (l) => expect(l, const FullnameFailure.tooLong()),
            isRight: (r) => fail('Debería retornar FullnameFailure.tooLong'),
          );
        },
      );
    });
  });
}
