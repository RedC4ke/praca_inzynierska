import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class StubTextFormWidget<T> extends HookWidget {
  const StubTextFormWidget({
    required this.hint,
    this.onPresed,
    this.validator,
    this.value,
    this.formatter,
    this.required = false,
    super.key,
  });

  final String hint;
  final VoidCallback? onPresed;
  final String? Function(T?)? validator;
  final T? value;
  final String Function(T)? formatter;
  final bool required;

  @override
  Widget build(BuildContext context) {
    String? textValue;
    if (value != null) {
      if (formatter != null) {
        textValue = formatter!(value as T);
      } else {
        textValue = value.toString();
      }
    }

    final controller = TextEditingController(text: textValue);

    return GestureDetector(
      onTap: onPresed,
      child: AbsorbPointer(
        child: TextFormField(
          validator: (_) {
            return validator?.call(value);
          },
          controller: controller,
          decoration: InputDecoration(
            hintText: hint,
          ),
          autovalidateMode: value != null
              ? AutovalidateMode.always
              : AutovalidateMode.onUserInteraction,
        ),
      ),
    );
  }
}
