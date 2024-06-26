import 'package:flutter/material.dart';

class CenteredBeveledFABLocation implements FloatingActionButtonLocation {
  const CenteredBeveledFABLocation();

  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    final fabX = (scaffoldGeometry.scaffoldSize.width -
            scaffoldGeometry.floatingActionButtonSize.width) /
        2;
    final fabY = scaffoldGeometry.contentBottom -
        scaffoldGeometry.floatingActionButtonSize.height / 2 +
        12;
    return Offset(fabX, fabY);
  }

  @override
  String toString() => 'FloatingActionButtonLocation.centeredBeveled';
}
