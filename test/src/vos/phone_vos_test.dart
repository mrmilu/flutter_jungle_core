import 'package:flutter_jungle_core/src/failures/phone_failure.dart';
import 'package:flutter_jungle_core/src/vos/phone_vos.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PhoneVos Unit Tests', () {
    group('Casos Válidos', () {
      test('debe retornar Right cuando el teléfono contiene solo números/espacios y coincide con maxLength', () {
        const input = '612345678';
        const maxLength = 9;

        final result = PhoneVos(input, maxLength);

        expect(result.value.isRight(), true);
        result.value.map(
          isLeft: (l) => fail('No debería retornar fallo para: $input'),
          isRight: (r) => expect(r, input),
        );
      });

      test('debe retornar Right cuando incluye espacios internos y cumple maxLength', () {
        const input = '612 34 56';
        const maxLength = 9;

        final result = PhoneVos(input, maxLength);

        expect(result.value.isRight(), true);
        result.value.map(
          isLeft: (l) => fail('No debería retornar fallo para: $input'),
          isRight: (r) => expect(r, input),
        );
      });

      test('debe hacer trim a los espacios al inicio y al final', () {
        const input = '   612345678   ';
        const maxLength = 9;

        final result = PhoneVos(input, maxLength);

        expect(result.value.isRight(), true);
        result.value.map(
          isLeft: (l) => fail('No debería retornar fallo'),
          isRight: (r) => expect(r, '612345678'),
        );
      });
    });

    group('Casos de Fallo - Empty', () {
      test('debe retornar PhoneFailure.empty cuando el input está vacío o son solo espacios', () {
        const emptyInputs = ['', '   '];
        const maxLength = 9;

        for (final input in emptyInputs) {
          final result = PhoneVos(input, maxLength);

          expect(result.value.isLeft(), true);
          result.value.map(
            isLeft: (l) => expect(l, isA<PhoneFailureEmpty>()),
            isRight: (r) => fail('Debería ser vacío para: $input'),
          );
        }
      });
    });

    group('Casos de Fallo - Invalid', () {
      test(
        'debe retornar PhoneFailure.invalid si contiene letras o símbolos',
        () {
          const invalidInputs = ['61234567a', '+34612345', '612-345-67'];
          const maxLength = 9;

          for (final input in invalidInputs) {
            final result = PhoneVos(input, maxLength);

            expect(
              result.value.isLeft(),
              true,
              reason: 'Debería ser inválido: $input',
            );
            result.value.map(
              isLeft: (l) => expect(l, isA<PhoneFailureInvalid>()),
              isRight: (r) => fail('No debería ser válido: $input'),
            );
          }
        },
      );

      test('debe retornar PhoneFailure.invalid si la longitud es menor que maxLength', () {
        const input = '61234567'; // 8 caracteres
        const maxLength = 9;

        final result = PhoneVos(input, maxLength);

        expect(result.value.isLeft(), true);
        result.value.map(
          isLeft: (l) => expect(l, isA<PhoneFailureInvalid>()),
          isRight: (r) => fail('Debería fallar por longitud insuficiente'),
        );
      });
    });

    group('Casos de Fallo - TooLong', () {
      test('debe retornar PhoneFailure.tooLong si la longitud es mayor que maxLength', () {
        const input = '6123456789'; // 10 caracteres
        const maxLength = 9;

        final result = PhoneVos(input, maxLength);

        expect(result.value.isLeft(), true);
        result.value.map(
          isLeft: (l) => expect(l, isA<PhoneFailureTooLong>()),
          isRight: (r) => fail('Debería fallar por exceder maxLength'),
        );
      });
    });
  });
}
