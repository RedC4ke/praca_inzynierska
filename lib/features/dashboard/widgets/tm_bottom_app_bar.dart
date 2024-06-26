import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelmate/core/theme/tm_decorations.dart';
import 'package:travelmate/core/utils/extensions.dart';
import 'package:travelmate/features/dashboard/widgets/tm_bottom_app_bar_item.dart';

class TmBottomAppBar extends StatelessWidget {
  const TmBottomAppBar({
    required this.router,
    super.key,
  });

  final TabsRouter router;

  @override
  Widget build(BuildContext context) {
    const height = 60.0;
    final items = [
      TmBottomAppBarItem(
        icon: FontAwesomeIcons.house,
        onPressed: () => router.setActiveIndex(0),
        isActive: router.activeIndex == 0,
      ),
      TmBottomAppBarItem(
        icon: FontAwesomeIcons.earthAmericas,
        onPressed: () => router.setActiveIndex(1),
        isActive: router.activeIndex == 1,
      ),
      TmBottomAppBarItem(
        icon: FontAwesomeIcons.timeline,
        onPressed: () => router.setActiveIndex(2),
        isActive: router.activeIndex == 2,
      ),
      TmBottomAppBarItem(
        icon: FontAwesomeIcons.userLarge,
        onPressed: () => router.setActiveIndex(3),
        isActive: router.activeIndex == 3,
      ),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: BottomAppBar(
        height: height,
        padding: EdgeInsets.zero,
        child: Container(
          decoration: BoxDecoration(
            color: context.colorScheme.surface,
            borderRadius: BorderRadius.circular(height / 4),
            boxShadow: TmDecorations.shadowMedium,
          ),
          clipBehavior: Clip.antiAlias,
          height: height,
          child: Material(
            type: MaterialType.transparency,
            child: Row(
              children: [
                items[0],
                items[1],
                const Spacer(),
                items[2],
                items[3],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
