import 'package:flutter/material.dart';
import 'package:melhoracidade/design_system/colors/vz_colors.dart';
import 'package:melhoracidade/design_system/typography/vz_typography.dart';

class FilterManifestations extends StatefulWidget {
  const FilterManifestations({super.key});

  @override
  State<FilterManifestations> createState() => _FilterManifestationsState();
}

class _FilterManifestationsState extends State<FilterManifestations> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 100,
            padding: const EdgeInsets.symmetric(vertical: 5),
            color: VZColors.colorScheme.secondary,
            child: Text(
              'Todos',
              textAlign: TextAlign.center,
              style: VZTypography.p1_600.copyWith(color: VZColors.g5),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 120,
            padding: const EdgeInsets.symmetric(vertical: 5),
            color: VZColors.colorScheme.primary,
            child: Text(
              'Meus apoios',
              textAlign: TextAlign.center,
              style: VZTypography.p1_600.copyWith(color: VZColors.g5),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 100,
            padding: const EdgeInsets.symmetric(vertical: 5),
            color: VZColors.colorScheme.primary,
            child: Text(
              'Pendentes',
              textAlign: TextAlign.center,
              style: VZTypography.p1_600.copyWith(color: VZColors.g5),
            ),
          ),
        ),
      ],
    );
  }
}
