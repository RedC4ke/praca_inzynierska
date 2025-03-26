import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelmate/core/utils/extensions.dart';

class TmBottomAppBarItem extends StatelessWidget {
  const TmBottomAppBarItem({
    required this.icon,
    required this.onPressed,
    this.isActive = false,
    super.key,
  });

  final IconData icon;
  final VoidCallback onPressed;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: double.maxFinite,
        child: InkWell(
          onTap: onPressed,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 2,
              ),
              if (isActive)
                const SizedBox(
                  height: 2,
                ),
              FaIcon(
                icon,
                color: context.colorScheme.onPrimaryContainer,
              ),
              if (isActive)
                Container(
                  height: 2,
                  width: 12,
                  decoration: ShapeDecoration(
                    shape: const StadiumBorder(),
                    color: context.colorScheme.custom1.value,
                  ),
                ),
              const SizedBox(
                height: 6,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
