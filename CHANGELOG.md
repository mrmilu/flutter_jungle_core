## 0.0.5

- Fixed `NieVos` and `NifVos` by removing unreachable parsing fallbacks, since the format regex already guarantees numeric input.
- Added unit tests reaching 100% line coverage for failures (CIF, description, email, full name, IBAN, NIE, NIF, password, phone), value objects, helpers (`handleRequest`, `handleRequestResultOr`, `Resource`, `ResultOr`), extensions (`DioException`, `Iterable`), logging (`Level`, `LogRecord`, `Logger`) and types (`NationalityType`, `PrefixPhoneType`).

## 0.0.4

- Uses Freezed 4.0.3 and build_runner 2.17.1 for code generation.

## 0.0.3

- Added `when`, `map`, and `typeError` to `GeneralBaseFailure` for handling and mapping failure variants.

## 0.0.2

- Added `handleRequest` and `handleRequestResultOr` to wrap asynchronous operations, handle Dio exceptions, and optionally return mock results.

## 0.0.1

- Added helper utilities for `Either`, resources, results, value objects, and iterable extensions.
- Added validation value objects for CIF, descriptions, email addresses, full names, IBAN, NIE, NIF, passwords, password confirmation, and phone numbers.
- Added corresponding validation failures for CIF, descriptions, email addresses, full names, IBAN, NIE, NIF, passwords, password confirmation, and phone numbers.
