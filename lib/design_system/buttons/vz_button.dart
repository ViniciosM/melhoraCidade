import 'package:flutter/material.dart';
import 'package:melhoracidade/design_system/buttons/button_theme.dart';
import 'package:melhoracidade/design_system/colors/vz_colors.dart';
import 'package:melhoracidade/design_system/colors/vz_semantic_colors.dart';
import 'package:melhoracidade/design_system/icons/vz_icons_helper.dart';
import 'package:melhoracidade/design_system/shadows/vz_box_shadows.dart';
import 'package:melhoracidade/design_system/typography/vz_typography.dart';
import 'package:svg_flutter/svg.dart';

enum SideIcon { left, right }

// extension validationOption on SideIcon {
//   bool get isLeft => this == SideIcon.left;
// }

class VZButtons {
  VZButtons._();

  static Widget primary({
    Key? key,
    required VoidCallback? onPressed,
    required String text,
    IconData? preffixIcon,
    IconData? suffixIcon,
    ButtonStyle? style,
    TextStyle? textstyle,
  }) {
    return AnimatedContainer(
      height: 48,
      duration: kThemeAnimationDuration,
      decoration: BoxDecoration(
        boxShadow: onPressed != null ? VZBoxShadows.elevation0 : null,
        borderRadius: VZButtonTheme.borderRadius,
      ),
      child: ElevatedButton(
        key: key,
        style: style ?? VZButtonTheme.primaryButtonStyle,
        onPressed: onPressed,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (preffixIcon != null || suffixIcon != null) ...[
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: (preffixIcon != null)
                    ? Icon(preffixIcon, size: 18)
                    : SizedBox(
                        width: 18,
                      ),
              ),
            ],
            if (preffixIcon != null || suffixIcon != null) ...[
              Expanded(
                child: Center(
                  child: Text(
                    text,
                    style: textstyle ?? VZTypography.h2_500,
                  ),
                ),
              )
            ] else ...[
              Center(
                child: Text(
                  text,
                  style: textstyle ?? VZTypography.h2_500,
                ),
              )
            ],
            if (preffixIcon != null || suffixIcon != null) ...[
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: (suffixIcon != null)
                    ? Icon(suffixIcon, size: 18)
                    : SizedBox(
                        width: 18,
                      ),
              ),
            ]
          ],
        ),
      ),
    );
  }

  static ElevatedButton secondary({
    Key? key,
    required VoidCallback? onPressed,
    required String text,
  }) {
    return ElevatedButton(
      key: key,
      style: VZButtonTheme.secondaryButtonStyle,
      onPressed: onPressed,
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: Text(
                text,
                style: VZTypography.h2_500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static ElevatedButton iconTextButton(
      {Key? key,
      required VoidCallback? onPressed,
      required String text,
      required IconData icon,
      SideIcon sideIcon = SideIcon.left,
      double spaceBetweenStringAndIcon = 6,
      double? sizeIcon,
      EdgeInsetsGeometry padding = const EdgeInsets.all(0)}) {
    return ElevatedButton(
      key: key,
      style: VZButtonTheme.secondaryButtonStyle.copyWith(
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
            vertical: 8,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            side: BorderSide(color: VZColors.g7),
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: padding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (sideIcon == SideIcon.left)
              Column(
                children: [
                  Icon(
                    icon,
                    size: sizeIcon,
                  ),
                  SizedBox(width: spaceBetweenStringAndIcon),
                ],
              ),
            Text(
              text,
              style: VZTypography.p2_500.copyWith(color: VZColors.g1),
            ),
            if (sideIcon == SideIcon.right)
              Column(
                children: [
                  SizedBox(width: spaceBetweenStringAndIcon),
                  Icon(
                    icon,
                    size: sizeIcon,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }

  static Widget iconTextButtonRight({
    Key? key,
    required VoidCallback? onPressed,
    required String text,
    required IconData icon,
    required Color backgroudColor,
    required Color iconColor,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
        decoration: BoxDecoration(
          color: backgroudColor,
          border: Border.all(
            width: 1,
            color: VZColors.g6,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style: VZTypography.p2_400.copyWith(color: VZColors.g3),
            ),
            Icon(
              icon,
              color: iconColor,
              size: 16.0,
            ),
          ],
        ),
      ),
    );
  }

  static Widget iconTextButtonLeftRight({
    Key? key,
    required VoidCallback? onPressed,
    required String text,
    required IconData iconLeft,
    double iconLeftSize = 16,
    required VZColorScheme iconLeftColor,
    required IconData iconRight,
    double iconRightSize = 16,
    required Color iconRightColor,
    required VZColorScheme fontColor,
    required VZColorScheme backgroudColor,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
        decoration: BoxDecoration(
          color: backgroudColor.colorVariant,
          border: Border.all(
            width: 1,
            color: VZColors.g6,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              iconLeft,
              color: iconLeftColor.color,
              size: iconLeftSize,
            ),
            Text(
              text,
              style: VZTypography.p2_400.copyWith(color: fontColor.color),
            ),
            Icon(
              iconRight,
              color: iconRightColor,
              size: iconRightSize,
            ),
          ],
        ),
      ),
    );
  }

  static AnimatedContainer iconButton(
      {Key? key,
      required VoidCallback? onPressed,
      required IconData iconData,
      bool isSelected = false,
      bool noBorder = false}) {
    return AnimatedContainer(
      duration: kThemeAnimationDuration,
      width: 45,
      height: 45,
      decoration: (noBorder)
          ? null
          : BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(4.35)),
              color: isSelected == true
                  ? VZColors.colorScheme.primary
                  : VZColors.white,
              border: Border.all(width: 1, color: VZColors.g7)),
      child: IconButton(
        key: key,
        iconSize: 40.0,
        onPressed: onPressed,
        icon: Icon(
          iconData,
          color: isSelected == true ? Colors.white : VZColors.g3,
          size: 25.0,
        ),
      ),
    );
  }

  static Widget shortcutButton(
      {Key? key, GestureTapCallback? onTap, IconData? iconData}) {
    return GestureDetector(
      key: key,
      onTap: onTap,
      child: VZIconRectangle(
          iconData: iconData,
          size: 28,
          isBorder: true,
          colorScheme: VZColorScheme(
              color: VZColors.colorScheme.primary, colorVariant: VZColors.g7)),
    );
  }

  static InkWell svgIconButton(
      {Key? key,
      required VoidCallback? onPressed,
      required String svgPath,
      required String iconDescription,
      bool isSelected = false}) {
    return InkWell(
      child: AnimatedContainer(
        duration: kThemeAnimationDuration,
        width: 45,
        height: 45,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(4.35)),
            color: isSelected == true
                ? VZColors.colorScheme.primary
                : VZColors.white,
            border: Border.all(width: 1, color: VZColors.g7)),
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: SvgPicture.asset(
              svgPath,
              colorFilter: ColorFilter.mode(
                  isSelected == true ? Colors.white : VZColors.g3,
                  BlendMode.srcATop),
              semanticsLabel: iconDescription,
              width: 40,
            )),
      ),
      onTap: () {
        onPressed?.call();
      },
    );
  }

  static InkWell textButton({
    Key? key,
    required String description,
    required VoidCallback? onPressed,
  }) {
    return InkWell(
        child: Text(description,
            style: VZTypography.p1_500.copyWith(
              color: VZColors.g4,
              decoration: TextDecoration.underline,
            )),
        onTap: () => onPressed?.call());
  }
}
