import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelmate/core/navigation/app_router.dart';
import 'package:travelmate/core/theme/tm_decorations.dart';
import 'package:travelmate/core/utils/extensions.dart';

class BlFab extends StatelessWidget {
  const BlFab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: TmDecorations.shadowSmall,
      ),
      child: FloatingActionButton(
        backgroundColor: context.colorScheme.primary,
        onPressed: () {
          context.pushRoute(const CreateTripRoute());
        },
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: FaIcon(
          FontAwesomeIcons.planeDeparture,
          color: context.colorScheme.onPrimary,
          size: 20,
        ),
      ),
    );
  }
}
