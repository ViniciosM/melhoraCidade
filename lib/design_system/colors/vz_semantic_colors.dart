import 'package:flutter/material.dart';

class VZColorScheme {
  const VZColorScheme({
    required this.color,
    required this.colorVariant,
  });

  final Color? color;
  final Color? colorVariant;
}

class VZSemanticColors extends ThemeExtension<VZSemanticColors> {
  const VZSemanticColors({
    required this.infoScheme,
    required this.successScheme,
    required this.warningScheme,
    required this.errorScheme,
  });

  final VZColorScheme infoScheme;
  final VZColorScheme successScheme;
  final VZColorScheme warningScheme;
  final VZColorScheme errorScheme;

  @override
  ThemeExtension<VZSemanticColors> copyWith({
    VZColorScheme? infoScheme,
    VZColorScheme? successScheme,
    VZColorScheme? warningScheme,
    VZColorScheme? errorScheme,
  }) {
    return VZSemanticColors(
      infoScheme: infoScheme ?? this.infoScheme,
      successScheme: successScheme ?? this.successScheme,
      warningScheme: warningScheme ?? this.warningScheme,
      errorScheme: errorScheme ?? this.errorScheme,
    );
  }

  @override
  ThemeExtension<VZSemanticColors> lerp(
      ThemeExtension<VZSemanticColors>? other, double t) {
    if (other is! VZSemanticColors) {
      return this;
    }
    return VZSemanticColors(
      infoScheme: VZColorScheme(
        color: Color.lerp(infoScheme.color, other.infoScheme.color, t),
        colorVariant: Color.lerp(
            infoScheme.colorVariant, other.infoScheme.colorVariant, t),
      ),
      successScheme: VZColorScheme(
        color: Color.lerp(successScheme.color, other.successScheme.color, t),
        colorVariant: Color.lerp(
            successScheme.colorVariant, other.successScheme.colorVariant, t),
      ),
      warningScheme: VZColorScheme(
        color: Color.lerp(warningScheme.color, other.warningScheme.color, t),
        colorVariant: Color.lerp(
            warningScheme.colorVariant, other.warningScheme.colorVariant, t),
      ),
      errorScheme: VZColorScheme(
        color: Color.lerp(errorScheme.color, other.errorScheme.color, t),
        colorVariant: Color.lerp(
            errorScheme.colorVariant, other.errorScheme.colorVariant, t),
      ),
    );
  }
}
