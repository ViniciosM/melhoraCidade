import 'package:flutter/material.dart';
import 'package:melhoracidade/design_system/colors/vz_colors.dart';
import 'package:melhoracidade/design_system/typography/vz_typography.dart';

class VZInputDecoration {
  static const _outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(4)),
    borderSide: BorderSide.none,
  );

  static final textSelectionTheme = TextSelectionThemeData(
    cursorColor: VZColors.g1,
    selectionColor: VZColors.g1.withOpacity(0.15),
  );

  static const InputDecorationTheme theme = InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(
      vertical: 8,
      horizontal: 16,
    ),

    /// Label
    floatingLabelBehavior: FloatingLabelBehavior.never,

    /// Fill
    filled: true,
    fillColor: VZColors.g0,

    /// Suffix
    suffixIconColor: VZColors.g7,

    /// Error
    errorStyle: VZTypography.caption,

    /// Borders
    enabledBorder: _outlineInputBorder,
    focusedBorder: _outlineInputBorder,
    errorBorder: _outlineInputBorder,
    focusedErrorBorder: _outlineInputBorder,
    border: _outlineInputBorder,
  );
}
