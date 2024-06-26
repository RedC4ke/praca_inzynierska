import 'package:flutter/material.dart';

class TmAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TmAppBar({
    this.title,
    this.actions = const [],
    super.key,
  });

  final String? title;
  final List<Widget> actions;

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title != null ? Text(title!) : null,
      elevation: 0,
      centerTitle: true,
      actions: [
        ...actions,
        const SizedBox(width: 6),
      ],
    );
  }
}
