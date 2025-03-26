import 'package:flutter/material.dart';
import 'package:travelmate/core/utils/extensions.dart';
import 'package:travelmate/gen/assets.gen.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Assets.images.logo.image(
          height: 32,
        ),
        const SizedBox(width: 8),
        Text(
          context.s.app_name,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ],
    );
  }
}
