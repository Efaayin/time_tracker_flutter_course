abstract class StringValidator {
  bool isValid(String value);
}

class NonEmptyStringValidator implements StringValidator {
  bool isValid(String value) {
    return value.isNotEmpty;
  }
}

class EmailAndPasswordValidators {
  final StringValidator emailValidator = NonEmptyStringValidator();
  final StringValidator passwordValidator = NonEmptyStringValidator();
}
