import 'package:flutter/material.dart';
import 'package:melhoracidade/design_system/colors/vz_colors.dart';

class VZTabBar {
  static final theme = TabBarTheme(
    labelPadding: const EdgeInsets.symmetric(horizontal: 16),
    labelColor: VZColors.colorScheme.primary,
    unselectedLabelColor: VZColors.g3,
    overlayColor: MaterialStateProperty.all(Colors.transparent),
    indicator: ShapeDecoration(
      shape: UnderlineInputBorder(
        borderSide: BorderSide(
          color: VZColors.colorScheme.primary,
          width: 0,
          style: BorderStyle.solid,
        ),
      ),
    ),
  );
}
