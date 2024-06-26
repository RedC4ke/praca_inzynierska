import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelmate/core/navigation/app_router.dart';
import 'package:travelmate/core/theme/tm_decorations.dart';

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
        onPressed: () {
          context.pushRoute(const CreateTripRoute());
        },
        child: const FaIcon(
          FontAwesomeIcons.planeDeparture,
          size: 20,
        ),
      ),
    );
  }
}
