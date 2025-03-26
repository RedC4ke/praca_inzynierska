import 'package:flutter/material.dart';
import 'package:travelmate/core/theme/tm_color_scheme.dart';
import 'package:travelmate/core/utils/extensions.dart';
import 'package:travelmate/domain/error/models/autocomplete_match.dart';
import 'package:travelmate/domain/error/models/autocomplete_prediction.dart';

class TmAutocompleteItem extends StatelessWidget {
  const TmAutocompleteItem({
    required this.prediction,
    this.isLoading,
    this.onTap,
    super.key,
  });

  final AutocompletePrediction prediction;
  final VoidCallback? onTap;
  final bool? isLoading;

  @override
  Widget build(BuildContext context) {
    final structured = prediction.placePrediction.structuredFormat;

    return Material(
      type: MaterialType.transparency,
      shadowColor: TmColorScheme.customColor1.value.withValues(alpha: 0.2),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 12,
          ),
          child: isLoading ?? false
              ? Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      context.colorScheme.secondary,
                    ),
                  ),
                )
              : Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _MatchedSubstringText(
                            text: structured.mainText.text,
                            matchedSubstrings: const [],
                            style: context.textTheme.bodyMedium,
                          ),
                          if (structured.secondaryText != null) ...[
                            const SizedBox(height: 4),
                            _MatchedSubstringText(
                              text: structured.secondaryText?.text ?? '',
                              matchedSubstrings: const [],
                              style: context.textTheme.labelSmall,
                            ),
                          ],
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          ' ',
                          style: context.textTheme.labelMedium,
                        ),
                        Text(
                          ' ',
                          style: context.textTheme.labelSmall,
                        ),
                      ],
                    ),
                  ],
                ),
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
  final List<AutocompleteMatch> matchedSubstrings;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final shouldHighlight = <MapEntry<String, bool>>[];

    for (var i = 0; i < matchedSubstrings.length; i++) {
      final noHighlight = text.substring(
        i > 0 ? matchedSubstrings[i - 1].endOffset : 0,
        matchedSubstrings[i].startOffset,
      );

      final nextHighlight = text.substring(
        matchedSubstrings[i].startOffset ?? 0,
        matchedSubstrings[i].endOffset,
      );

      shouldHighlight
        ..add(MapEntry(noHighlight, false))
        ..add(MapEntry(nextHighlight, true));
    }

    if (matchedSubstrings.isNotEmpty) {
      final lastNoHighlight = text.substring(
        matchedSubstrings.last.endOffset,
      );

      shouldHighlight.add(MapEntry(lastNoHighlight, false));
    } else {
      shouldHighlight.add(MapEntry(text, false));
    }

    return Text.rich(
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
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
