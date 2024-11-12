import 'package:flutter/widgets.dart';
import 'package:travelmate/core/utils/extensions.dart';
import 'package:travelmate/core/utils/regex_patterns.dart';
import 'package:travelmate/gen/l10n.dart';

abstract class Validators {
  static const defaultMaxLength = 50;
  static const nameMinLength = 3;
  static const nameMaxLength = 48;
  static const descriptionMaxLenth = 255;
  static const passwordMinLength = 8;

  static String? notEmpty(BuildContext context, String? text) {
    final s = S.of(context);

    if (text == null || text.isEmpty) {
      return s.err_empty_field;
    }

    return null;
  }

  static String? minLength(
    BuildContext context,
    String? text,
    int minLength,
  ) {
    final s = S.of(context);

    final err = notEmpty(context, text);
    if (err != null) {
      return err;
    }

    if (text!.length < minLength) {
      return s.err_too_short(minLength);
    }

    return null;
  }

  static String? charsAndDigits(BuildContext context, String? text) {
    final s = S.of(context);

    var err = notEmpty(context, text);
    if (err != null) {
      return err;
    }

    err = minLength(context, text, 3);
    if (err != null) {
      return err;
    }

    if (!RegExp(RegexPatterns.charsAndDigits).hasMatch(text ?? '')) {
      return s.err_only_chars_and_digits;
    }

    return null;
  }

  static String? phoneNumber(BuildContext context, String? text) {
    final err = notEmpty(context, text);
    if (err != null) {
      return err;
    }

    if (!RegExp(RegexPatterns.phoneNumber).hasMatch(text!) || text.length < 9) {
      return context.s.err_wrong_number;
    }

    return null;
  }

  static String? onlyDigitsNotNull(BuildContext context, String? text) {
    final s = S.of(context);

    var err = notEmpty(context, text);
    if (err != null) {
      return err;
    }

    err = minLength(context, text, 1);
    if (err != null) {
      return err;
    }

    if (!RegExp(RegexPatterns.digitsOnly).hasMatch(text ?? '')) {
      return s.err_only_chars_and_digits;
    }

    return null;
  }

  static String? zipCodeLength(BuildContext context, String? text) {
    var err = notEmpty(context, text);
    if (err != null) {
      return err;
    }

    err = minLength(context, text, 6);
    if (err != null) {
      return err;
    }

    return null;
  }

  static String? email(BuildContext context, String? text) {
    final s = S.of(context);

    final trimmedText = text?.trim();

    final err = notEmpty(context, trimmedText);
    if (err != null) {
      return err;
    }

    if (!RegExp(RegexPatterns.email).hasMatch(trimmedText!)) {
      return s.err_invalid_email;
    }

    return null;
  }

  static String? password(BuildContext context, String? text) {
    var err = notEmpty(context, text);
    if (err != null) {
      return err;
    }

    err = minLength(context, text, passwordMinLength);
    if (err != null) {
      return err;
    }

    return null;
  }

  static String? repeatPassword(
    BuildContext context,
    String? text,
    String password,
  ) {
    final s = S.of(context);

    final err = notEmpty(context, text);
    if (err != null) {
      return err;
    }

    if (text != password) {
      return s.err_password_dont_match;
    }

    return null;
  }
}
