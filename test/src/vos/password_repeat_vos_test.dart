import 'package:flutter_jungle_core/src/failures/password_repeat_failure.dart';
import 'package:flutter_jungle_core/src/vos/password_repeat_vos.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('RepeatPasswordVos Unit Tests', () {
    group('Casos Válidos', () {
      test(
        'debe retornar Right cuando las contraseñas coinciden exactamente',
        () {
          const password = 'MiPassword123!';
          const passToMatchWith = 'MiPassword123!';

          final result = RepeatPasswordVos(
            password: password,
            passToMatchWith: passToMatchWith,
          );

          expect(result.value.isRight(), true);
          result.value.map(
            isLeft: (l) => fail('No debería retornar fallo cuando coinciden'),
            isRight: (r) => expect(r, password),
          );
        },
      );

      test('debe retornar Right cuando ambas son cadenas vacías', () {
        const password = '';
        const passToMatchWith = '';

        final result = RepeatPasswordVos(
          password: password,
          passToMatchWith: passToMatchWith,
        );

        expect(result.value.isRight(), true);
        result.value.map(
          isLeft: (l) => fail('No debería retornar fallo'),
          isRight: (r) => expect(r, ''),
        );
      });
    });

    group('Casos de Fallo - Mismatched', () {
      test('debe retornar PasswordRepeatFailure.mismatched si las contraseñas no coinciden', () {
        const password = 'Password123!';
        const passToMatchWith = 'Password456!';

        final result = RepeatPasswordVos(
          password: password,
          passToMatchWith: passToMatchWith,
        );

        expect(result.value.isLeft(), true);
        result.value.map(
          isLeft: (l) => expect(l, isA<PasswordRepeatFailureMismatched>()),
          isRight: (r) => fail('Debería retornar fallo por no coincidir'),
        );
      });

      test('debe retornar PasswordRepeatFailure.mismatched si difieren por mayúsculas o minúsculas', () {
        const password = 'Password123';
        const passToMatchWith = 'password123';

        final result = RepeatPasswordVos(
          password: password,
          passToMatchWith: passToMatchWith,
        );

        expect(result.value.isLeft(), true);
        result.value.map(
          isLeft: (l) => expect(l, isA<PasswordRepeatFailureMismatched>()),
          isRight: (r) =>
              fail('Debería fallar por diferencia de mayúsculas/minúsculas'),
        );
      });

      test('debe retornar PasswordRepeatFailure.mismatched si una tiene espacios adicionales', () {
        const password = 'Password123 ';
        const passToMatchWith = 'Password123';

        final result = RepeatPasswordVos(
          password: password,
          passToMatchWith: passToMatchWith,
        );

        expect(result.value.isLeft(), true);
        result.value.map(
          isLeft: (l) => expect(l, isA<PasswordRepeatFailureMismatched>()),
          isRight: (r) => fail('Debería fallar por espacios adicionales'),
        );
      });
    });
  });
}
