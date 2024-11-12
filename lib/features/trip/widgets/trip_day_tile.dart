import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:travelmate/core/theme/tm_decorations.dart';
import 'package:travelmate/domain/trip/models/trip_day.dart';

class TripDayTile extends StatelessWidget {
  const TripDayTile({
    required this.tripDay,
    super.key,
  });

  final TripDay tripDay;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: TmDecorations.shadowSmall,
      ),
      clipBehavior: Clip.antiAlias,
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  DateFormat('dd.MM').format(tripDay.date),
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                const SizedBox(width: 8),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: tripDay.getStartingLocation(),
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      if (tripDay.getEndingLocation().isNotEmpty) ...[
                        const WidgetSpan(
                          child: FaIcon(
                            FontAwesomeIcons.arrowRight,
                          ),
                        ),
                        TextSpan(
                          text: tripDay.getEndingLocation(),
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ],
                  ),
                ),
                const Icon(
                  Icons.chevron_right,
                  size: 32,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
