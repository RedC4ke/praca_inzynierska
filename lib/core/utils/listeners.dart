import 'package:flutter/material.dart';
import 'package:travelmate/application/base/loadable_state.dart';
import 'package:travelmate/core/widgets/tm_flushbar.dart';

abstract class Listeners {
  static void loadableStateListener(
    BuildContext context,
    String successMessage,
    LoadableState<dynamic>? previous,
    LoadableState<dynamic> next, {
    bool popOnSuccess = true,
  }) {
    next.maybeWhen(
      success: (data) {
        if (popOnSuccess) {
          Navigator.of(context).pop(data);
        }
        TmFlushbar.success(content: successMessage).showWithContext(context);
      },
      error: (error) => TmFlushbar.error(content: error.message),
      orElse: () {},
    );
  }
}
