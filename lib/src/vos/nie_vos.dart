import '../failures/nie_failure.dart';
import '../helpers/either.dart';
import '../helpers/value_object.dart';

class NieVos extends ValueObject<NieFailure, String> {
  @override
  final Either<NieFailure, String> value;

  factory NieVos(String input) {
    return NieVos._(_validate(input.trim().toUpperCase()));
  }

  const NieVos._(this.value);

  static Either<NieFailure, String> _validate(String input) {
    const nieRegex = r'^[XYZ][0-9]{7}[A-Z]$';
    if (!RegExp(nieRegex).hasMatch(input)) {
      return left(const NieFailure.invalid());
    }

    final prefixValue = switch (input[0]) {
      'X' => '0',
      'Y' => '1',
      'Z' => '2',
      _ => '',
    };

    final number = int.tryParse(prefixValue + input.substring(1, 8));
    if (number == null) {
      return left(const NieFailure.invalid());
    }

    const letters = 'TRWAGMYFPDXBNJZSQVHLCKE';
    final expectedLetter = letters[number % 23];

    if (input[8] != expectedLetter) {
      return left(const NieFailure.invalid());
    }

    return right(input);
  }
}
