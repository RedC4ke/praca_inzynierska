abstract class RegexPatterns {
  // Latin characters and digits
  static const charsAndDigits = r'^[a-zA-Z0-9]+$';

  //post code
  static const postCode = r'^[0-9]{2}-[0-9]{3}$';

  //only digits
  static const digitsOnly = r'^[0-9]+$';

  // RFC5322 compliant email regex [https://stackoverflow.com/a/201378/14551697]
  static const email =
      r'''(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])''';
  // phone number regex [https://stackoverflow.com/a/16699895/14551697]
  static const phoneNumber = r'^\+?[0-9]{0,12}';
}
