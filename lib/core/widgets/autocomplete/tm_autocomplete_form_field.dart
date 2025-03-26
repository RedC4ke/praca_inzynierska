import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:travelmate/application/base/async_state.dart';
import 'package:travelmate/core/theme/tm_decorations.dart';
import 'package:travelmate/core/utils/extensions.dart';
import 'package:travelmate/core/widgets/autocomplete/application/autocomplete_controller.dart';
import 'package:travelmate/core/widgets/autocomplete/tm_autocomplete_item.dart';
import 'package:travelmate/domain/error/models/autocomplete_prediction.dart';
import 'package:travelmate/domain/error/models/autocomplete_response.dart';

class TmAutocompleteFormField extends HookConsumerWidget {
  const TmAutocompleteFormField({
    this.initialValue,
    this.onSelected,
    this.required = false,
    this.validator,
    this.controller,
    this.hintText,
    this.labelText,
    super.key,
  });

  final String? initialValue;
  final void Function(AutocompletePrediction?)? onSelected;
  final bool required;
  final String? Function(AutocompletePrediction?)? validator;
  final String? labelText;
  final String? hintText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textEditingController =
        controller ?? useTextEditingController(text: initialValue);
    final focusNode = useFocusNode();
    final currentTextValue = useState<String?>(initialValue);
    final currentValue = useState<AutocompletePrediction?>(null);
    final suggestionsController = useMemoized(
      SuggestionsController<AutocompletePrediction>.new,
    );

    final notifier = ref.read(autocompleteControllerProvider.notifier);

    CancelableOperation<List<AutocompletePrediction>>? autocompleteOperation;

    ref.listen(
      autocompleteControllerProvider,
      (p, n) {
        suggestionsController.suggestions = switch (n) {
          Success<AutocompleteResponse>(:final data) => data.suggestions,
          _ => [],
        };
      },
    );

    useMemoized(
      () {
        focusNode.addListener(() {
          if (!focusNode.hasFocus) {
            if (textEditingController.text.trim().isNotEmpty) {
              textEditingController.text = currentTextValue.value ?? '';
            } else {
              currentTextValue.value = null;
              textEditingController.clear();
            }
          }
        });
      },
      [focusNode],
    );

    return TypeAheadField<AutocompletePrediction>(
      controller: textEditingController,
      hideWithKeyboard: false,
      hideKeyboardOnDrag: true,
      suggestionsController: suggestionsController,
      focusNode: focusNode,
      suggestionsCallback: (pattern) async {
        await autocompleteOperation?.cancel();
        autocompleteOperation = CancelableOperation.fromFuture(
          notifier.fetchAutocomplete(pattern),
        );
        return autocompleteOperation!.value;
      },
      hideOnEmpty: true,
      autoFlipDirection: true,
      debounceDuration: const Duration(milliseconds: 750),
      errorBuilder: (context, error) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.s.err_unknown,
              style: context.textTheme.bodySmall?.copyWith(
                color: context.colorScheme.error,
              ),
            ),
          ],
        );
      },
      emptyBuilder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.s.no_results,
              style: context.textTheme.bodySmall,
            ),
          ],
        );
      },
      builder: (
        context,
        textEditingController,
        focusNode,
      ) {
        return TextFormField(
          controller: textEditingController,
          focusNode: focusNode,
          decoration: InputDecoration(
            labelText:
                '${labelText ?? context.s.destination}${required ? '*' : ''}',
            hintText: hintText ?? context.s.destination_hint,
            suffixIcon: const Icon(
              Icons.location_pin,
            ),
          ),
          validator: (_) {
            return validator?.call(currentValue.value);
          },
          onTapOutside: (_) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
        );
      },
      decorationBuilder: (context, child) {
        return Material(
          type: MaterialType.transparency,
          child: Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceBright,
              borderRadius: BorderRadius.circular(16),
              boxShadow: TmDecorations.shadowLarge,
            ),
            child: child,
          ),
        );
      },
      itemBuilder: (context, option) {
        return TmAutocompleteItem(
          prediction: option,
        );
      },
      listBuilder: (context, children) {
        return ListView.separated(
          shrinkWrap: true,
          itemCount: children.length,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return children.elementAt(index);
          },
          separatorBuilder: (_, __) => Divider(
            color: context.colorScheme.secondaryContainer,
          ),
        );
      },
      onSelected: (option) {
        textEditingController.text = option.title;
        currentTextValue.value = option.title;
        currentValue.value = option;
        onSelected?.call(option);
      },
    );
  }
}
