# Flutter Jungle Core

A collection of reusable utilities for Flutter projects, including types for
modeling results and resources, validated value objects, and logging tools.

## Features

- `Either` for representing a result with either an error or a success value.
- `Resource` and `ResultOr` for representing loading, success, and failure
  states.
- `handleRequest` and `handleRequestResultOr` for wrapping asynchronous
  operations and converting Dio errors into application failures.
- `ValueObject` as a base class for validated value objects.
- Ready-to-use validators for CIF, descriptions, email addresses, full names,
  IBAN, NIE, NIF, passwords, password confirmation, and phone numbers.
- Specific failures that identify the reason a validation failed.
- Logging with levels and structured records.
- The `firstWhereOrNull` extension for iterables.
- Reusable widgets: `ButtonScaleWidget`, `CustomExpandableWidget`, and
  `SimpleBlockWidget`.

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

### Handling requests

`handleRequest` wraps a request that returns data in a `Resource`. It converts
Dio exceptions into a failure using the API error code when available, or maps
the Dio error to a `GeneralBaseFailure` otherwise. Other exceptions are logged
and returned as invalid-response-format failures.

```dart
import 'package:dio/dio.dart';

final dio = Dio();

final Resource<GeneralBaseFailure, List<String>> users =
    await handleRequest<GeneralBaseFailure, List<String>>(
      request: () async => (await dio.get<List<String>>('/users')).data!,
      fromString: GeneralBaseFailure.fromString,
      general: (failure) => failure,
    );
```

For requests that do not return a value, use `handleRequestResultOr`:

```dart
final ResultOr<GeneralBaseFailure> result =
    await handleRequestResultOr<GeneralBaseFailure>(
      request: () async {
        await dio.post<void>('/users');
      },
      fromString: GeneralBaseFailure.fromString,
      general: (failure) => failure,
    );
```

Both helpers support mock mode. Set `useMockData: true` to skip the request;
for `handleRequest`, also provide a non-null `mockData` value.

### Logging

```dart
final logger = Logger('my_app');
logger.info('Application started');
logger.warning('Example warning');
```

### Widgets

`ButtonScaleWidget` adds a scale animation when its child is tapped:

```dart
ButtonScaleWidget(
  onTap: () => print('Button pressed'),
  percentScale: 0.96,
  child: const Text('Press me'),
)
```

`SimpleBlockWidget` places a child in a customizable block. Use
`SimpleBlockWidget.withBorder` to create a border using the current theme's
`onSurface` color by default:

```dart
SimpleBlockWidget(
  padding: const EdgeInsets.all(16),
  backgroundColor: Colors.white,
  child: const Text('Block content'),
)
```

`CustomExpandableWidget` displays an animated expandable section with an
optional subtitle, collapsed content, footer, and custom children:

```dart
CustomExpandableWidget(
  title: 'Details',
  subtitle: 'Optional subtitle',
  children: const [Text('Expanded content')],
)
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
