# Flutter Jungle Core

A collection of reusable utilities for Flutter projects, including types for
modeling results and resources, validated value objects, and logging tools.

## Features

- `Either` for representing a result with either an error or a success value.
- `Resource` and `ResultOr` for representing loading, success, and failure
  states.
- `ValueObject` as a base class for validated value objects.
- Ready-to-use validators for CIF, descriptions, email addresses, full names,
  IBAN, NIE, NIF, passwords, password confirmation, and phone numbers.
- Specific failures that identify the reason a validation failed.
- Logging with levels and structured records.
- The `firstWhereOrNull` extension for iterables.

## Installation

Add the dependency to your project:

```sh
flutter pub add flutter_jungle_core
```

Then import the library:

```dart
import 'package:flutter_jungle_core/flutter_jungle_core.dart';
```

## Usage

### Validating an email address

Value objects provide `isValid`, `isInvalid`, `getOrElse`, and `when` to inspect
the result of a validation:

```dart
final email = EmailVos('person@example.com');

email.when(
  isLeft: (failure) {
    print('Invalid email: ${failure.code}');
  },
  isRight: (value) {
    print('Valid email: $value');
  },
);
```

### Representing an operation's state

`Resource` includes the `none`, `loading`, `success`, and `failure` states:

```dart
final Resource<String, List<String>> state =
    Resource<String, List<String>>.success(['Alice', 'Bob']);

state.when(
  isNone: () => print('No data'),
  isLoading: () => print('Loading...'),
  isSuccess: (users) => print('Users: $users'),
  isFailure: (error) => print('Error: $error'),
);
```

`ResultOr` provides equivalent states when there is no success value to carry:

```dart
final ResultOr<String> result = ResultOr<String>.failure('Could not save');

result.when(
  isNone: () => print('No result'),
  isLoading: () => print('Saving...'),
  isSuccess: () => print('Saved'),
  isFailure: (error) => print('Error: $error'),
);
```

### Logging

```dart
final logger = Logger('my_app');
logger.info('Application started');
logger.warning('Example warning');
```

## Available validators

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

## Contributing and reporting issues

The source code is hosted on
[GitHub](https://github.com/mrmilu/flutter_jungle_core). To report a bug or
suggest an improvement, open an
[issue](https://github.com/mrmilu/flutter_jungle_core/issues).
