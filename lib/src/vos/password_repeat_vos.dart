import '../../flutter_jungle_core.dart';
import '../failures/password_repeat_failure.dart';

class RepeatPasswordVos extends ValueObject<PasswordRepeatFailure, String> {
  @override
  final Either<PasswordRepeatFailure, String> value;
  factory RepeatPasswordVos({
    required String password,
    required String passToMatchWith,
  }) => RepeatPasswordVos._(
    _validate(password: password, passToMatchWith: passToMatchWith),
  );
  const RepeatPasswordVos._(this.value);

  static Either<PasswordRepeatFailure, String> _validate({
    required String password,
    required String passToMatchWith,
  }) {
    if (password != passToMatchWith) {
      return left(const PasswordRepeatFailure.mismatched());
    }

    return right(password);
  }
}
