import 'package:flutter_jungle_core/src/failures/description_failure.dart';
import 'package:flutter_jungle_core/src/vos/description_vos.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DescriptionVos Unit Tests', () {
    group('Casos Válidos', () {
      test('debe retornar Right con una descripción válida', () {
        const input = 'Esta es una descripción válida para el Value Object.';
        final result = DescriptionVos(input);

        expect(result.value.isRight(), true);
        result.value.map(
          isLeft: (l) => fail('No debería retornar un fallo'),
          isRight: (r) =>
              expect(r, 'Esta es una descripción válida para el Value Object.'),
        );
      });

      test('debe retornar Right cuando tiene exactamente 320 caracteres', () {
        final input = 'a' * 320; // Cadena de exactamente 320 caracteres
        final result = DescriptionVos(input);

        expect(result.value.isRight(), true);
        result.value.map(
          isLeft: (l) => fail('No debería retornar un fallo'),
          isRight: (r) => expect(r.length, 320),
        );
      });

      test('debe hacer trim a los espacios al inicio y al final', () {
        const input = '   Descripción con espacios   ';
        final result = DescriptionVos(input);

        expect(result.value.isRight(), true);
        result.value.map(
          isLeft: (l) => fail('No debería retornar un fallo'),
          isRight: (r) => expect(r, 'Descripción con espacios'),
        );
      });
    });

    group('Casos de Fallo - Empty', () {
      test(
        'debe retornar DescriptionFailure.empty cuando el input está vacío',
        () {
          const input = '';
          final result = DescriptionVos(input);

          expect(result.value.isLeft(), true);
          result.value.map(
            isLeft: (l) => expect(l, const DescriptionFailure.empty()),
            isRight: (r) => fail('Debería retornar fallo'),
          );
        },
      );

      test('debe retornar DescriptionFailure.empty cuando el input solo contiene espacios', () {
        const input = '     ';
        final result = DescriptionVos(input);

        expect(result.value.isLeft(), true);
        result.value.map(
          isLeft: (l) => expect(l, const DescriptionFailure.empty()),
          isRight: (r) => fail('Debería retornar fallo'),
        );
      });
    });

    group('Casos de Fallo - TooLong', () {
      test(
        'debe retornar DescriptionFailure.tooLong si supera los 320 caracteres',
        () {
          final input = 'a' * 321; // Cadena de 321 caracteres
          final result = DescriptionVos(input);

          expect(result.value.isLeft(), true);
          result.value.map(
            isLeft: (l) => expect(l, const DescriptionFailure.tooLong()),
            isRight: (r) => fail('Debería retornar DescriptionFailure.tooLong'),
          );
        },
      );
    });
  });
}
