import '../failures/nif_failure.dart';
import '../helpers/either.dart';
import '../helpers/value_object.dart';

class NifVos extends ValueObject<NifFailure, String> {
  @override
  final Either<NifFailure, String> value;

  factory NifVos(String input) {
    return NifVos._(_validate(input.trim()));
  }
  const NifVos._(this.value);

  // Letter table for the modulo 23 algorithm.
  static const List<String> _dniLetters = [
    'T',
    'R',
    'W',
    'A',
    'G',
    'M',
    'Y',
    'F',
    'P',
    'D',
    'X',
    'B',
    'N',
    'J',
    'Z',
    'S',
    'Q',
    'V',
    'H',
    'L',
    'C',
    'K',
    'E',
  ];

  static Either<NifFailure, String> _validate(String input) {
    // Validate the length (exactly 9 characters: 8 digits + 1 letter).
    if (input.length > 9) {
      return left(const NifFailure.tooLong());
    }

    if (input.length < 9) {
      return left(const NifFailure.tooShort());
    }

    // Validate the format (8 digits followed by an uppercase letter).
    const regex = r'^[0-9]{8}[A-Z]$';
    if (!RegExp(regex).hasMatch(input)) {
      return left(const NifFailure.invalid());
    }

    // Extract the number (first 8 characters) and the letter (last character).
    final numberStr = input.substring(0, 8);
    final letter = input.substring(8);

    // Convert the number to an integer.
    final number = int.tryParse(numberStr);
    if (number == null) {
      return left(const NifFailure.invalid());
    }

    // Calculate the expected letter using modulo 23.
    final remainder = number % 23;
    final expectedLetter = _dniLetters[remainder];

    // Compare the provided letter with the expected letter.
    if (letter != expectedLetter) {
      return left(const NifFailure.invalid());
    }

    // Si todas las validaciones pasan, devolver el DNI
    return right(input);
  }
}
