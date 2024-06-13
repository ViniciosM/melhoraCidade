import 'package:flutter/widgets.dart';
import 'package:melhoracidade/design_system/colors/vz_colors.dart';

class VZBoxShadows {
  static const Color _boxShadowColor = VZColors.g5;

  @Deprecated('Não utilizar, será removido')
  static final List<BoxShadow> elevation0 = [
    BoxShadow(
      blurRadius: 8,
      offset: const Offset(1, 10),
      color: VZColors.colorScheme.onPrimary.withOpacity(0.04),
    ),
  ];

  static final List<BoxShadow> e1 = [
    BoxShadow(
      blurRadius: 30,
      offset: const Offset(0, 1),
      color: VZColors.shaddow.withOpacity(0.08),
    ),
    BoxShadow(
      blurRadius: 2,
      offset: const Offset(0, 1),
      color: VZColors.shaddow.withOpacity(0.08),
    ),
  ];

  static final List<BoxShadow> e2 = [
    BoxShadow(
      spreadRadius: 2,
      blurRadius: 24,
      offset: const Offset(0, 0.5),
      color: VZColors.shaddow.withOpacity(0.06),
    ),
    BoxShadow(
      spreadRadius: 2,
      blurRadius: 6,
      offset: const Offset(0, 1),
      color: VZColors.shaddow.withOpacity(0.06),
    ),
  ];

  static final List<BoxShadow> e3 = [
    BoxShadow(
      spreadRadius: 4,
      blurRadius: 32,
      offset: const Offset(0, 4),
      color: VZColors.shaddow.withOpacity(0.08),
    ),
    BoxShadow(
      blurRadius: 16,
      offset: const Offset(0, 3),
      color: VZColors.shaddow.withOpacity(0.04),
    ),
  ];
}
