import 'package:flutter_jungle_core/src/failures/password_failure.dart';
import 'package:flutter_jungle_core/src/vos/password_vos.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PasswordVos Unit Tests', () {
    group('Casos Válidos', () {
      test(
        'debe retornar Right con contraseñas que cumplen todos los criterios',
        () {
          const validPasswords = [
            'Password123!',
            'A1b2c3d4#',
            'SecurePass1\$',
            'Clave123@Segura',
          ];

          for (final pass in validPasswords) {
            final result = PasswordVos(pass);

            expect(result.value.isRight(), true, reason: 'Falló para: $pass');
            result.value.map(
              isLeft: (l) => fail('No debería retornar fallo para: $pass'),
              isRight: (r) => expect(r, pass),
            );
          }
        },
      );

      test('debe hacer trim a los espacios al inicio y al final', () {
        const input = '   Password123!   ';
        final result = PasswordVos(input);

        expect(result.value.isRight(), true);
        result.value.map(
          isLeft: (l) => fail('No debería retornar fallo'),
          isRight: (r) => expect(r, 'Password123!'),
        );
      });
    });

    group('Casos de Fallo', () {
      test('debe retornar PasswordFailure.minLength si la contraseña tiene menos de 8 caracteres o está vacía', () {
        const shortPasswords = ['', '   ', 'Pass1!', 'A1b2c3!'];

        for (final pass in shortPasswords) {
          final result = PasswordVos(pass);

          expect(
            result.value.isLeft(),
            true,
            reason: 'Debería fallar por longitud: $pass',
          );
          result.value.map(
            isLeft: (l) => expect(l, isA<PasswordFailureInvalidMinLength>()),
            isRight: (r) => fail('No debería ser válida: $pass'),
          );
        }
      });

      test(
        'debe retornar PasswordFailure.includeUppercase si falta la mayúscula',
        () {
          const noUppercase = 'password123!';
          final result = PasswordVos(noUppercase);

          expect(result.value.isLeft(), true);
          result.value.map(
            isLeft: (l) => expect(l, isA<PasswordFailureIncludeUppercase>()),
            isRight: (r) => fail('Debería fallar por falta de mayúscula'),
          );
        },
      );

      test(
        'debe retornar PasswordFailure.includeLowercase si falta la minúscula',
        () {
          const noLowercase = 'PASSWORD123!';
          final result = PasswordVos(noLowercase);

          expect(result.value.isLeft(), true);
          result.value.map(
            isLeft: (l) => expect(l, isA<PasswordFailureIncludeLowercase>()),
            isRight: (r) => fail('Debería fallar por falta de minúscula'),
          );
        },
      );

      test('debe retornar PasswordFailure.includeSpecialCharacter si falta el carácter especial', () {
        const noSpecialChar = 'Password123';
        final result = PasswordVos(noSpecialChar);

        expect(result.value.isLeft(), true);
        result.value.map(
          isLeft: (l) =>
              expect(l, isA<PasswordFailureIncludeSpecialCharacter>()),
          isRight: (r) => fail('Debería fallar por falta de carácter especial'),
        );
      });

      test('debe retornar PasswordFailure.includeDigit si falta un dígito numérico', () {
        const noDigit = 'Password!';
        final result = PasswordVos(noDigit);

        expect(result.value.isLeft(), true);
        result.value.map(
          isLeft: (l) => expect(l, isA<PasswordFailureIncludeDigit>()),
          isRight: (r) => fail('Debería fallar por falta de dígito numérico'),
        );
      });
    });
  });
}
