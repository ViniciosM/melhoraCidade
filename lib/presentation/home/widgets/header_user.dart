import 'package:flutter/material.dart';
import 'package:melhoracidade/design_system/colors/vz_colors.dart';
import 'package:melhoracidade/design_system/typography/vz_typography.dart';

class HeaderUser extends StatefulWidget {
  const HeaderUser({super.key});

  @override
  State<HeaderUser> createState() => _HeaderUserState();
}

class _HeaderUserState extends State<HeaderUser> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //const Icon(Icons.location_city),
        Expanded(
          child: Text(
            'CRATEUS-CE',
            style: VZTypography.h2_500.copyWith(color: VZColors.g1),
          ),
        ),
        const CircleAvatar(
          radius: 18,
        ),
      ],
    );
  }
}
