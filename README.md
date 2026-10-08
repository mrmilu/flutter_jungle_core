# Flutter Jungle Core

Paquete con utilidades reutilizables para proyectos Flutter: tipos para modelar
resultados y recursos, objetos de valor con validaciones y herramientas de
logging.

## Características

- `Either` para representar un resultado con una alternativa de error o éxito.
- `Resource` y `ResultOr` para expresar estados de carga, éxito y fallo.
- `ValueObject` como base para objetos de valor validados.
- Validaciones listas para usar: CIF, descripción, email, nombre completo, IBAN,
  NIE, NIF, contraseña, repetición de contraseña y teléfono.
- Failures específicos para consultar el motivo de cada validación fallida.
- Logging con niveles y registros estructurados.
- Extensión `firstWhereOrNull` para iterables.

## Instalación

Añade la dependencia a tu proyecto:

```sh
flutter pub add flutter_jungle_core
```

Después, importa la librería:

```dart
import 'package:flutter_jungle_core/flutter_jungle_core.dart';
```

## Uso

### Validar un email

Los objetos de valor proporcionan `isValid`, `isInvalid`, `getOrElse` y `when`
para inspeccionar el resultado de una validación:

```dart
final email = EmailVos('persona@example.com');

email.when(
  isLeft: (failure) {
    print('Email no válido: ${failure.code}');
  },
  isRight: (value) {
    print('Email válido: $value');
  },
);
```

### Representar el estado de una operación

`Resource` incluye los estados `none`, `loading`, `success` y `failure`:

```dart
final Resource<String, List<String>> state =
    Resource<String, List<String>>.success(['Ana', 'Luis']);

state.when(
  isNone: () => print('Sin datos'),
  isLoading: () => print('Cargando...'),
  isSuccess: (users) => print('Usuarios: $users'),
  isFailure: (error) => print('Error: $error'),
);
```

`ResultOr` ofrece estados equivalentes cuando no se necesita transportar un
valor de éxito:

```dart
final ResultOr<String> result = ResultOr<String>.failure('No se pudo guardar');

result.when(
  isNone: () => print('Sin resultado'),
  isLoading: () => print('Guardando...'),
  isSuccess: () => print('Guardado'),
  isFailure: (error) => print('Error: $error'),
);
```

### Logging

```dart
final logger = Logger('mi_app');
logger.info('Aplicación iniciada');
logger.warning('Aviso de ejemplo');
```

## Validaciones disponibles

| Value object | Failure |
| --- | --- |
| `CifVos` | `CifFailure` |
| `DescriptionVos` | `DescriptionFailure` |
| `EmailVos` | `EmailFailure` |
| `FullnameVos` | `FullnameFailure` |
| `IbanVos` | `IbanFailure` |
| `NieVos` | `NieFailure` |
| `NifVos` | `NifFailure` |
| `PasswordVos` | `PasswordFailure` |
| `RepeatPasswordVos` | `PasswordRepeatFailure` |
| `PhoneVos` | `PhoneFailure` |

## Contribuir e informar de problemas

El código fuente está en [GitHub](https://github.com/mrmilu/flutter_jungle_core).
Para reportar errores o proponer mejoras, abre una
[incidencia](https://github.com/mrmilu/flutter_jungle_core/issues).
