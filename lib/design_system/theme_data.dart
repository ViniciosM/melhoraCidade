import 'package:flutter/material.dart';
import 'package:melhoracidade/design_system/buttons/button_theme.dart';
import 'package:melhoracidade/design_system/card/vz_card_theme.dart';
import 'package:melhoracidade/design_system/colors/vz_colors.dart';
import 'package:melhoracidade/design_system/colors/vz_semantic_colors.dart';
import 'package:melhoracidade/design_system/dividers/vz_divider.dart';
import 'package:melhoracidade/design_system/inputs/vz_input_decoration.dart';
import 'package:melhoracidade/design_system/tabs/vz_tab_bar.dart';
import 'package:melhoracidade/design_system/vz_app_bar.dart';

class VZThemeApp {
  static final themeData = ThemeData(
    useMaterial3: false,
    colorScheme: VZColors.colorScheme,
    textSelectionTheme: VZInputDecoration.textSelectionTheme,
    inputDecorationTheme: VZInputDecoration.theme,
    elevatedButtonTheme: VZButtonTheme.elevated,
    appBarTheme: VZAppBar.theme,
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    cardTheme: VZCard.theme,
    tabBarTheme: VZTabBar.theme,
    dividerTheme: VZDivider.theme,
    extensions: const <ThemeExtension<dynamic>>[
      VZSemanticColors(
        infoScheme: VZColors.semanticInfo,
        successScheme: VZColors.semanticSuccess,
        warningScheme: VZColors.semanticWarning,
        errorScheme: VZColors.semanticError,
      ),
    ],
  );
}
