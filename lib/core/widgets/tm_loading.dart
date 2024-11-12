import 'package:flutter/material.dart';
import 'package:travelmate/core/utils/extensions.dart';

class TmLoading extends StatelessWidget {
  const TmLoading({this.transparent = true, super.key});

  final bool transparent;

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      child: ColoredBox(
        color: transparent
            ? Colors.transparent
            : context.colorScheme.surface.withOpacity(0.45),
        child: const Center(
          child: SizedBox(
            width: 64,
            height: 64,
            child: CircularProgressIndicator(
              strokeWidth: 5,
            ),
          ),
        ),
      ),
    );
  }
}
