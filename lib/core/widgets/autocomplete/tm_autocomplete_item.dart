import 'package:flutter/material.dart';
import 'package:travelmate/core/utils/extensions.dart';
import 'package:travelmate/domain/autocomplete/models/autocomplete_prediction.dart';
import 'package:travelmate/domain/autocomplete/models/autocomplete_substring.dart';

class TmAutocompleteItem extends StatelessWidget {
  const TmAutocompleteItem({
    required this.prediction,
    required this.onSelected,
    super.key,
  });

  final AutocompletePrediction prediction;
  final void Function(AutocompletePrediction) onSelected;

  @override
  Widget build(BuildContext context) {
    final structured = prediction.structuredFormatting;

    return InkWell(
      onTap: () => onSelected(prediction),
      child: Container(
        color: context.colorScheme.surface,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _MatchedSubstringText(
              text: structured?.mainText ?? prediction.description,
              matchedSubstrings: structured?.mainTextMatchedSubstrings ?? [],
              style: context.textTheme.bodyMedium,
            ),
            if (structured?.secondaryText != null) ...[
              const SizedBox(height: 4),
              _MatchedSubstringText(
                text: structured?.secondaryText ?? '',
                matchedSubstrings:
                    structured?.secondaryTextMatchedSubstrings ?? [],
                style: context.textTheme.bodySmall,
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _MatchedSubstringText extends StatelessWidget {
  const _MatchedSubstringText({
    required this.text,
    required this.matchedSubstrings,
    required this.style,
  });

  final String text;
  final List<AutocompleteSubstring> matchedSubstrings;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final shouldHighlight = <MapEntry<String, bool>>[];

    for (var i = 0; i < matchedSubstrings.length; i++) {
      final noHighlight = text.substring(
        i > 0
            ? matchedSubstrings[i - 1].offset + matchedSubstrings[i - 1].length
            : 0,
        matchedSubstrings[i].offset,
      );

      final nextHighlight = text.substring(
        matchedSubstrings[i].offset,
        matchedSubstrings[i].offset + matchedSubstrings[i].length,
      );

      shouldHighlight
        ..add(MapEntry(noHighlight, false))
        ..add(MapEntry(nextHighlight, true));
    }

    if (matchedSubstrings.isNotEmpty) {
      final lastNoHighlight = text.substring(
        matchedSubstrings.last.offset + matchedSubstrings.last.length,
      );

      shouldHighlight.add(MapEntry(lastNoHighlight, false));
    } else {
      shouldHighlight.add(MapEntry(text, false));
    }

    return Text.rich(
      TextSpan(
        children: [
          for (final entry in shouldHighlight)
            TextSpan(
              text: entry.key,
              style: style?.copyWith(
                fontWeight: entry.value ? FontWeight.bold : FontWeight.normal,
              ),
            ),
        ],
      ),
    );
  }
}
