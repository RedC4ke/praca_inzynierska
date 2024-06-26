import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:travelmate/core/utils/extensions.dart';
import 'package:travelmate/core/widgets/autocomplete/application/autocomplete_controller.dart';
import 'package:travelmate/core/widgets/autocomplete/tm_autocomplete_item.dart';
import 'package:travelmate/domain/autocomplete/models/autocomplete_prediction.dart';

class TmAutocompleteFormField extends ConsumerWidget {
  const TmAutocompleteFormField({
    this.onSelected,
    super.key,
  });

  final void Function(AutocompletePrediction)? onSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Autocomplete<AutocompletePrediction>(
      optionsBuilder: (text) async {
        // Debounce the text input
        await Future<void>.delayed(const Duration(seconds: 1));

        final notifier = ref.read(autocompleteControllerProvider.notifier);
        final result = await notifier.fetchAutocomplete(text.text);

        return result.maybeWhen(
          orElse: () => const [],
          success: (response) => response.predictions,
        );
      },
      fieldViewBuilder: (
        context,
        textEditingController,
        focusNode,
        onFieldSubmitted,
      ) {
        return TextFormField(
          controller: textEditingController,
          focusNode: focusNode,
          onEditingComplete: onFieldSubmitted,
          decoration: InputDecoration(
            labelText: context.s.add_location,
          ),
        );
      },
      displayStringForOption: (option) => option.description,
      optionsViewBuilder: (context, onSelected, options) {
        return Material(
          elevation: 4,
          child: SizedBox(
            height: 200,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: options.length,
              itemBuilder: (context, index) {
                final option = options.elementAt(index);
                return TmAutocompleteItem(
                  prediction: option,
                  onSelected: onSelected,
                );
              },
            ),
          ),
        );
      },
      onSelected: (option) {
        onSelected?.call(option);
      },
    );
  }
}
