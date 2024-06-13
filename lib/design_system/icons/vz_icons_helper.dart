import 'package:flutter/material.dart';
import 'package:melhoracidade/design_system/colors/vz_colors.dart';
import 'package:melhoracidade/design_system/colors/vz_semantic_colors.dart';
import 'package:melhoracidade/design_system/typography/vz_typography.dart';

class VZIconRectangle extends StatelessWidget {
  const VZIconRectangle(
      {Key? key,
      this.iconData,
      this.content,
      this.size = 48,
      this.isBorder = false,
      this.colorBorder,
      this.radius = 4,
      required this.colorScheme})
      : super(key: key);

  final IconData? iconData;
  final Widget? content;
  final double size;
  final VZColorScheme colorScheme;
  final bool isBorder;
  final double radius;
  final Color? colorBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: (isBorder == true) ? null : colorScheme.colorVariant,
        border: isBorder
            ? Border.all(
                width: 1,
                color: colorBorder != null
                    ? colorBorder!
                    : colorScheme.colorVariant!)
            : null,
        /*border: (isBorder == true)
            ? Border.all(width: 1, color: colorScheme.colorVariant!)
            : null,*/
        shape: BoxShape.rectangle,
      ),
      child: content != null
          ? Center(child: content)
          : (iconData != null
              ? Icon(
                  iconData,
                  size: size / 2,
                  color: colorScheme.color,
                )
              : Icon(
                  Icons.warning,
                  size: size / 2,
                  color: colorScheme.color,
                )),
    );
  }
}

class VZIconCircle extends StatelessWidget {
  const VZIconCircle(
      {Key? key,
      this.iconData,
      this.content,
      this.size = 48,
      this.isborder = false,
      this.colorBorder = VZColors.g0,
      required this.colorScheme})
      : super(key: key);

  final IconData? iconData;
  final Widget? content;
  final double size;
  final VZColorScheme colorScheme;
  final bool isborder;
  final Color? colorBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: colorScheme.colorVariant,
        shape: BoxShape.circle,
        border: isborder ? Border.all(width: 1, color: colorBorder!) : null,
      ),
      child: content != null
          ? Center(child: content)
          : (iconData != null
              ? Icon(
                  iconData,
                  size: size / 2,
                  color: colorScheme.color,
                )
              : Icon(
                  Icons.warning,
                  size: size / 2,
                  color: colorScheme.color,
                )),
    );
  }
}

class VZTextCircle extends StatelessWidget {
  const VZTextCircle(
      {Key? key,
      required this.value,
      this.size = 48,
      required this.colorScheme})
      : super(key: key);

  final String value;
  final double size;
  final VZColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: colorScheme.colorVariant,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          '$value',
          style: VZTypography.p2_600.copyWith(color: colorScheme.color),
        ),
      ),
    );
  }
}
