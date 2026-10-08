import '../failures/cif_failure.dart';
import '../helpers/either.dart';
import '../helpers/value_object.dart';

class CifVos extends ValueObject<CifFailure, String> {
  @override
  final Either<CifFailure, String> value;

  factory CifVos(String input) {
    return CifVos._(_validate(input.trim().toUpperCase()));
  }

  const CifVos._(this.value);

  // 'K' and 'V' are also valid letters.
  static const List<String> _validFirstLetters = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'J',
    'K',
    'N',
    'P',
    'Q',
    'R',
    'S',
    'U',
    'V',
    'W',
  ];

  // Index 0 -> J, 1 -> A, 2 -> B ... 9 -> I
  static const String _controlLetters = 'JABCDEFGHI';

  static Either<CifFailure, String> _validate(String input) {
    if (input.length > 9) {
      return left(const CifFailure.tooLong());
    }

    if (input.length < 9) {
      return left(const CifFailure.tooShort());
    }

    const cifRegex = r'^[A-Z][0-9]{7}[0-9A-Z]$';
    if (!RegExp(cifRegex).hasMatch(input)) {
      return left(const CifFailure.invalid());
    }

    final firstLetter = input[0];
    if (!_validFirstLetters.contains(firstLetter)) {
      return left(const CifFailure.invalid());
    }

    final digits = input.substring(1, 8);
    final controlChar = input[8];

    int sumA = 0;
    int sumB = 0;

    for (int i = 0; i < digits.length; i++) {
      final digit = int.parse(digits[i]);

      if (i % 2 == 0) {
        final doubled = digit * 2;
        sumB += doubled > 9 ? doubled - 9 : doubled;
      } else {
        sumA += digit;
      }
    }

    final totalSum = sumA + sumB;
    final unitDigit = totalSum % 10;
    final controlDigit = unitDigit == 0 ? 0 : 10 - unitDigit;

    final controlAsLetter = _controlLetters[controlDigit];

    bool isValid = false;

    if (['K', 'P', 'Q', 'S', 'N', 'W'].contains(firstLetter)) {
      // Letter only.
      isValid = controlChar == controlAsLetter;
    } else if (['A', 'B', 'E', 'H'].contains(firstLetter)) {
      // Either a number or a letter.
      isValid =
          controlChar == controlDigit.toString() ||
          controlChar == controlAsLetter;
    } else {
      // Number only.
      isValid = controlChar == controlDigit.toString();
    }

    if (!isValid) {
      return left(const CifFailure.invalid());
    }

    return right(input);
  }
}
