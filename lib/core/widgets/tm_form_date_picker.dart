import 'package:flutter/material.dart';
import 'package:travelmate/core/utils/extensions.dart';

class TmFormDatePicker extends StatelessWidget {
  const TmFormDatePicker({
    this.validator,
    this.label,
    this.hint,
    this.value,
    this.onChanged,
    super.key,
  });

  final FormFieldValidator<DateTime>? validator;
  final void Function(DateTime?)? onChanged;
  final String? label;
  final String? hint;
  final DateTime? value;

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController(
      text: value?.ddMMyyyy() ?? '',
    );

    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label ?? context.s.date,
        hintText: hint,
        suffixIcon: const Icon(Icons.calendar_today),
      ),
      canRequestFocus: false,
      onTap: () async {
        final dateTime = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2100),
        );

        if (dateTime == null) {
          return;
        }

        onChanged?.call(dateTime);
      },
    );
  }
}
