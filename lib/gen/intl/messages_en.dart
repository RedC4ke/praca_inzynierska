// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(minLength) => "Minimum length: ${minLength}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "add": MessageLookupByLibrary.simpleMessage("Add"),
        "add_bucket_list_item":
            MessageLookupByLibrary.simpleMessage("Add a new item"),
        "add_cover_image":
            MessageLookupByLibrary.simpleMessage("Add cover image"),
        "add_location": MessageLookupByLibrary.simpleMessage("Add location"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "choose_bucket_list":
            MessageLookupByLibrary.simpleMessage("Choose a list"),
        "close": MessageLookupByLibrary.simpleMessage("Close"),
        "create": MessageLookupByLibrary.simpleMessage("Create"),
        "create_bucket_list":
            MessageLookupByLibrary.simpleMessage("Create a new list"),
        "delete": MessageLookupByLibrary.simpleMessage("Delete"),
        "description": MessageLookupByLibrary.simpleMessage("Description"),
        "edit": MessageLookupByLibrary.simpleMessage("Edit"),
        "err_account_exists_with_different_credential":
            MessageLookupByLibrary.simpleMessage(
                "An account already exists with the same email address but different login details. Log in with the provider associated with this email address."),
        "err_email_already_in_use": MessageLookupByLibrary.simpleMessage(
            "An account already exists with the given email address."),
        "err_email_not_verified": MessageLookupByLibrary.simpleMessage(
            "The email address has not been verified."),
        "err_empty_field":
            MessageLookupByLibrary.simpleMessage("This field is required."),
        "err_invalid_email":
            MessageLookupByLibrary.simpleMessage("Invalid email address"),
        "err_invalid_phone_number":
            MessageLookupByLibrary.simpleMessage("Invalid phone number"),
        "err_location_denied_forever": MessageLookupByLibrary.simpleMessage(
            "Location permissions not granted. To grant them, go to app settings."),
        "err_no_internet":
            MessageLookupByLibrary.simpleMessage("No internet connection"),
        "err_no_internet_desc": MessageLookupByLibrary.simpleMessage(
            "Make sure you have access to the internet and refresh the page. If the problem persists, restart the application."),
        "err_only_chars_and_digits": MessageLookupByLibrary.simpleMessage(
            "Only digits and Latin alphabet characters are allowed."),
        "err_password_dont_match": MessageLookupByLibrary.simpleMessage(
            "The passwords are not the same"),
        "err_requires_recent_login":
            MessageLookupByLibrary.simpleMessage("A recent login is required."),
        "err_too_many_requests": MessageLookupByLibrary.simpleMessage(
            "Too many requests. Please try again later."),
        "err_too_short": m0,
        "err_unknown": MessageLookupByLibrary.simpleMessage(
            "An unknown error occurred. Please try again later."),
        "err_user_not_found": MessageLookupByLibrary.simpleMessage(
            "No user found with the given email address."),
        "err_weak_password": MessageLookupByLibrary.simpleMessage(
            "The password provided is too weak."),
        "err_wrong_credentials": MessageLookupByLibrary.simpleMessage(
            "The email address or password is incorrect. Please try again."),
        "err_wrong_number":
            MessageLookupByLibrary.simpleMessage("Invalid phone number"),
        "err_wrong_repeated_password":
            MessageLookupByLibrary.simpleMessage("The passwords do not match."),
        "items": MessageLookupByLibrary.simpleMessage("Completed items"),
        "name": MessageLookupByLibrary.simpleMessage("Name"),
        "no_data": MessageLookupByLibrary.simpleMessage("No data"),
        "no_results": MessageLookupByLibrary.simpleMessage("No results"),
        "remove": MessageLookupByLibrary.simpleMessage("Remove"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "saved": MessageLookupByLibrary.simpleMessage("Saved"),
        "search": MessageLookupByLibrary.simpleMessage("Search"),
        "your_list": MessageLookupByLibrary.simpleMessage("Your list")
      };
}
