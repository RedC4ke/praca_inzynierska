import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:travelmate/core/theme/tm_colors.dart';

const Duration _duration = Duration(seconds: 3);
const Duration _animationDuration = Duration(milliseconds: 300);

// ignore: must_be_immutable
class TmFlushbar extends Flushbar<void> {
  TmFlushbar({
    required String content,
    required super.backgroundColor,
    required super.messageColor,
    super.key,
  }) : super(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          borderRadius: BorderRadius.circular(16),
          flushbarStyle: FlushbarStyle.FLOATING,
          boxShadows: const [
            BoxShadow(
              color: Color(0x260F283C),
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
          duration: _duration,
          message: content,
          forwardAnimationCurve: Curves.easeOutCirc,
          animationDuration: _animationDuration,
          dismissDirection: FlushbarDismissDirection.HORIZONTAL,
        );

  factory TmFlushbar.warning({
    required String content,
  }) =>
      TmFlushbar(
        content: content,
        backgroundColor: TmColors.yellowLightest,
        messageColor: TmColors.yellowDarkest,
      );

  factory TmFlushbar.success({
    required String content,
  }) =>
      TmFlushbar(
        content: content,
        backgroundColor: TmColors.greenLightest,
        messageColor: TmColors.greenDarkest,
      );

  factory TmFlushbar.error({
    required String content,
  }) =>
      TmFlushbar(
        content: content,
        backgroundColor: TmColors.redLightest,
        messageColor: TmColors.redDarkest,
      );

  @override
  Widget get messageText => Text(
        message!,
        style: TextStyle(
          color: messageColor,
          height: 1.3,
        ), // Updated to use local style
        textAlign: TextAlign.start,
      );

  Future<void> showWithContext(BuildContext context) {
    if (TmFlushbar.mountedContext(context)) {
      return show(context);
    }
    return Future.value();
  }

  static bool mountedContext(BuildContext context) {
    final state = context.findRenderObject();
    return state?.attached ?? false;
  }
}
