import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:melhoracidade/design_system/colors/vz_colors.dart';
import 'package:melhoracidade/design_system/space/vz_space.dart';
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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //const Icon(Icons.location_city),
        Expanded(
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  //radius: 18,
                  backgroundImage: AssetImage(
                    'assets/images/VINICIOS-FOTO.png',
                  ),
                ),
                VZSpace.x6,
                Text(
                  'Olá, Vinicios',
                  textAlign: TextAlign.center,
                  style: VZTypography.h2_500.copyWith(color: VZColors.g1),
                ),
                const Spacer(
                  flex: 1,
                ),
                Icon(
                  Icons.pin_drop_outlined,
                  color: VZColors.colorScheme.secondary,
                ),
                VZSpace.x4,
                Text(
                  'Crateus-CE',
                  textAlign: TextAlign.center,
                  style: VZTypography.h2_500.copyWith(color: VZColors.g1),
                ),
              ]),
        ),
      ],
    );
  }
}
