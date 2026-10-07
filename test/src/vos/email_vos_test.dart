import 'package:flutter_jungle_core/src/failures/email_failure.dart';
import 'package:flutter_jungle_core/src/vos/email_vos.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('EmailVos Unit Tests', () {
    group('Casos Válidos', () {
      test('debe retornar Right con correos válidos en formato estándar', () {
        const validEmails = [
          'usuario@ejemplo.com',
          'nombre.apellido@dominio.co',
          'user+tag@example.org',
          'admin@sub.dominio.es',
          'user_123@domain.com.mx',
        ];

        for (final email in validEmails) {
          final result = EmailVos(email);

          expect(result.value.isRight(), true, reason: 'Falló para: $email');
          result.value.map(
            isLeft: (l) => fail('No debería retornar fallo para: $email'),
            isRight: (r) => expect(r, email),
          );
        }
      });

      test('debe hacer trim a los espacios al inicio y al final', () {
        const input = '   test@ejemplo.com   ';
        final result = EmailVos(input);

        expect(result.value.isRight(), true);
        result.value.map(
          isLeft: (l) => fail('No debería retornar un fallo'),
          isRight: (r) => expect(r, 'test@ejemplo.com'),
        );
      });
    });

    group('Casos de Fallo - Empty', () {
      test('debe retornar EmailFailure.empty cuando el input está vacío', () {
        const input = '';
        final result = EmailVos(input);

        expect(result.value.isLeft(), true);
        result.value.map(
          isLeft: (l) => expect(l, const EmailFailure.empty()),
          isRight: (r) => fail('Debería retornar fallo'),
        );
      });

      test('debe retornar EmailFailure.empty cuando el input solo contiene espacios', () {
        const input = '     ';
        final result = EmailVos(input);

        expect(result.value.isLeft(), true);
        result.value.map(
          isLeft: (l) => expect(l, const EmailFailure.empty()),
          isRight: (r) => fail('Debería retornar fallo'),
        );
      });
    });

    group('Casos de Fallo - Invalid', () {
      test('debe retornar EmailFailure.invalid para formatos de correo incorrectos', () {
        const invalidEmails = [
          'sin_arroba.com',
          'usuario@',
          '@dominio.com',
          'usuario@dominio',
          'usuario@dominio.c', // TLD de solo 1 carácter (el regex exige {2,})
          'usuario@.com',
          'usuario con espacios@dominio.com',
          'usuario@dominio..com',
        ];

        for (final email in invalidEmails) {
          final result = EmailVos(email);

          expect(
            result.value.isLeft(),
            true,
            reason: 'Debería ser inválido: $email',
          );
          result.value.map(
            isLeft: (l) => expect(
              l,
              const EmailFailure.invalid(),
              reason: 'Fallo incorrecto para: $email',
            ),
            isRight: (r) => fail('No debería ser válido: $email'),
          );
        }
      });
    });
  });
}
