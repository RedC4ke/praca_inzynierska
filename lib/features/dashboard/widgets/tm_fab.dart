import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        onPressed: () {},
        child: Stack(
          children: [
            const FaIcon(
              FontAwesomeIcons.bucket,
              size: 30,
            ),
            Positioned(
              bottom: 1,
              left: 0,
              right: 0,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FaIcon(
                  FontAwesomeIcons.plus,
                  size: 16,
                  color: context.colorScheme.primary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
