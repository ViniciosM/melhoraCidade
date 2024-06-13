import 'package:flutter/material.dart';
import 'package:melhoracidade/design_system/colors/vz_semantic_colors.dart';

class VZColors {
  //#region Primary Colors
  static const ColorScheme colorScheme = ColorScheme(
    brightness: Brightness.light,
    // required
    primary: Color(0xFFAA0012),
    // required
    onPrimary: Color(0xFFF4DEE0),
    // required
    // primaryContainer: Color(0xFF000000),
    // onPrimaryContainer: Color(0xFF000000),
    secondary: Color(0xFFAA0012),
    // required
    onSecondary: Color(0xFFF4DEE0),
    // required
    // secondaryContainer: Color(0xFF000000),
    // onSecondaryContainer: Color(0xFF000000),
    // tertiary: Color(0xFF000000),
    // onTertiary: Color(0xFF000000),
    // tertiaryContainer: Color(0xFF000000),
    // onTertiaryContainer: Color(0xFF000000),
    error: Color(0xFF000000),
    // required
    onError: Color(0xFF000000),
    // required
    // errorContainer: Color(0xFF000000),
    // onErrorContainer: Color(0xFF000000),
    background: Color(0xFFFFFFFF),
    // required
    onBackground: Color(0xFF000000),
    // required
    surface: Color(0xFFFFFFFF),
    // required
    onSurface: Color(0xFF000000), // required
    // surfaceVariant: Color(0xFF000000),
    // onSurfaceVariant: Color(0xFF000000),
    // outline: Color(0xFF000000),
    // shadow: Color(0xFF000000),
    // inverseSurface: Color(0xFF000000),
    // onInverseSurface: Color(0xFF000000),
    // inversePrimary: Color(0xFF000000),
    // surfaceTint: Color(0xFF000000),
  );
  //endregion

  //#region Complementary Colors scheme
  static const complementaryYellow = VZColorScheme(
    color: Color(0xFFDB9E00),
    colorVariant: Color(0xFFFEF6CF),
  );

  static const complementaryPurple = VZColorScheme(
    color: Color(0xFFA174FA),
    colorVariant: Color(0xFFF0E9FF),
  );

  static const complementaryGreen = VZColorScheme(
    color: Color(0xFF36BA89),
    colorVariant: Color(0xFFE9F7F2),
  );

  static const complementaryBlue = VZColorScheme(
    color: Color(0xFF38A3F7),
    colorVariant: Color(0xFFEBF6FE),
  );

  static const complementaryGrayScheme = VZColorScheme(
    color: VZColors.g1,
    colorVariant: VZColors.g7,
  );
  //#endregion

  //#region Semantic color schemes
  static const semanticInfo = VZColorScheme(
    color: Color(0xFF5296D5),
    colorVariant: Color(0xFFCBE0F3),
  );
  static const semanticWarning = VZColorScheme(
    color: Color(0xFF7B6208),
    colorVariant: Color(0xFFF9EEC8),
  );
  static const semanticSuccess = VZColorScheme(
    color: Color(0xFF29BB89),
    colorVariant: Color(0xFFCCEAC4),
  );
  static const semanticError = VZColorScheme(
    color: Color(0xFFCF1F0C),
    colorVariant: Color(0xFFF4E7E5),
  );
  static const semanticPending = VZColorScheme(
    color: Color(0xFF9E9E9E),
    colorVariant: Color(0xFFF5F5F5),
  );

  static const semanticDisabled = VZColorScheme(
    color: Color(0xFF5F6C78),
    colorVariant: Color(0xFFF0F0F5),
  );
  //#endregion

  //#region Grey scale
  static const Color white = Color(0xFFFFFFFF);
  static const Color g0 = Color(0xFF212529);
  static const Color g1 = Color(0xFF343A40);
  static const Color g2 = Color(0xFF4D5863);
  static const Color g3 = Color(0xFF5F6C78);
  static const Color g4 = Color(0xFF919FAD);
  static const Color g5 = Color(0xFFE9ECEF);
  static const Color g6 = Color(0xFFEEEEEF);
  static const Color g7 = Color(0xFFF6F6F8);
  static const Color disabled = Color(0xFFA4A6B1);
  //#endregion

  //#region Pastel
  static const Color bluePastel = Color(0x1A38A3F7);
  //#endregion

//#region Shaddow
  static const Color shaddow = Color(0x06051B14);

  static const Color borderTable = Color(0xFFCED8E3);

  static const Color transparent = Colors.transparent;

//#endregion
}
