import 'package:flutter/material.dart';
import 'package:melhoracidade/design_system/colors/vz_colors.dart';
import 'package:melhoracidade/design_system/typography/vz_typography.dart';

class VZButtonTheme {
  static const BorderRadius borderRadius = BorderRadius.all(
    Radius.circular(6),
  );

  static final ButtonStyle _baseButtonStyle = ButtonStyle(
    textStyle: MaterialStateProperty.all(
      VZTypography.h2_500.copyWith(color: VZColors.white),
    ),
    elevation: MaterialStateProperty.all(0),
    padding: MaterialStateProperty.all(
      const EdgeInsets.symmetric(
        vertical: 12,
      ),
    ),
  );

  static ButtonStyle primaryButtonStyle = _baseButtonStyle.copyWith(
    backgroundColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return VZColors.disabled;
      }
      return VZColors.colorScheme.primary;
    }),
    foregroundColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return VZColors.white;
      }
      return VZColors.white;
    }),
    overlayColor: MaterialStateProperty.all(VZColors.colorScheme.secondary),
    shape: MaterialStateProperty.all(
      const RoundedRectangleBorder(borderRadius: borderRadius),
    ),
  );

  static ButtonStyle secondaryButtonStyle = _baseButtonStyle.copyWith(
    backgroundColor: MaterialStateProperty.all(Colors.transparent),
    foregroundColor: MaterialStateProperty.all(VZColors.colorScheme.primary),
    overlayColor: MaterialStateProperty.all(VZColors.g5.withOpacity(0.32)),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        side: BorderSide(color: VZColors.colorScheme.primary),
        borderRadius: borderRadius,
      ),
    ),
  );

  static ElevatedButtonThemeData elevated = ElevatedButtonThemeData(
    style: primaryButtonStyle,
  );
}
