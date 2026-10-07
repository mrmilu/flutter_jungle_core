import '../../flutter_jungle_core.dart';
import '../failures/description_failure.dart';

class DescriptionVos extends ValueObject<DescriptionFailure, String> {
  @override
  final Either<DescriptionFailure, String> value;

  factory DescriptionVos(String input) {
    return DescriptionVos._(_validate(input.trim()));
  }
  const DescriptionVos._(this.value);

  static Either<DescriptionFailure, String> _validate(String input) {
    if (input.isEmpty) {
      return left(const DescriptionFailure.empty());
    }

    if (input.length > 320) {
      return left(const DescriptionFailure.tooLong());
    }

    return right(input);
  }
}
