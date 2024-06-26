import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fpdart/fpdart.dart';
import 'package:travelmate/core/utils/extensions.dart';

class TmFormDropdownButton<T> extends StatelessWidget {
  const TmFormDropdownButton({
    required this.hint,
    required this.items,
    this.label,
    this.validator,
    this.value,
    this.onChanged,
    this.borderRadius = 16,
    super.key,
  });

  final FormFieldValidator<T>? validator;
  final String hint;
  final String? label;
  final List<DropdownMenuItem<Either<VoidCallback, T>>> items;
  final ValueChanged<T?>? onChanged;
  final T? value;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    final dropdownValue =
        this.value != null ? right<VoidCallback, T>(this.value as T) : null;

    return FormField<T>(
      validator: validator,
      initialValue: value,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      builder: (state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (label != null)
              Text(
                label ?? '',
                style: context.textTheme.bodyMedium,
                textAlign: TextAlign.start,
              ),
            DropdownButton2<Either<VoidCallback, T>?>(
              style: context.textTheme.bodyLarge,
              underline: const SizedBox.shrink(),
              enableFeedback: true,
              iconStyleData: IconStyleData(
                icon: const FaIcon(
                  FontAwesomeIcons.chevronDown,
                ),
                iconSize: 20,
                iconEnabledColor: context.colorScheme.onSurface,
              ),
              buttonStyleData: ButtonStyleData(
                padding: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  color: context.colorScheme.onPrimary,
                  borderRadius: BorderRadius.circular(borderRadius),
                  border: Border.all(
                    color: state.hasError
                        ? context.colorScheme.error
                        : context.colorScheme.outline,
                  ),
                ),
              ),
              dropdownStyleData: DropdownStyleData(
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: context.colorScheme.onPrimary,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: context.colorScheme.outline,
                  ),
                ),
              ),
              isExpanded: true,
              value: dropdownValue,
              hint: Text(
                hint,
                style: context.textTheme.bodyLarge?.copyWith(
                  color: state.hasError
                      ? context.colorScheme.error
                      : context.colorScheme.onSurface,
                ),
              ),
              items: items,
              onChanged: (v) {
                v?.fold(
                  (callback) => callback(),
                  (value) {
                    state.didChange(value);
                    onChanged?.call(value);
                  },
                );
              },
            ),
            if (state.hasError)
              Padding(
                padding: const EdgeInsets.only(top: 4, left: 14),
                child: Text(
                  state.errorText ?? '',
                  style: context.textTheme.bodySmall?.copyWith(
                    color: context.colorScheme.error,
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
