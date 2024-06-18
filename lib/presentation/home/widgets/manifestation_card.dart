import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:melhoracidade/design_system/buttons/vz_button.dart';
import 'package:melhoracidade/design_system/colors/vz_colors.dart';
import 'package:melhoracidade/design_system/space/vz_space.dart';
import 'package:melhoracidade/design_system/typography/vz_typography.dart';

class ManifestationCard extends StatefulWidget {
  const ManifestationCard({super.key});

  @override
  State<ManifestationCard> createState() => _ManifestationCardState();
}

class _ManifestationCardState extends State<ManifestationCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: VZColors.colorScheme.onPrimary,
      child: Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.grey,
          ),
          VZSpace.x10,
          Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'MANIFESTATION XXX',
                style: VZTypography.p1_600.copyWith(color: VZColors.g1),
              ),
              VZSpace.y6,
              Text(
                'Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto exto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: VZTypography.p1_400.copyWith(color: VZColors.g1),
              ),
              VZSpace.y6,
              Text(
                'Criado por: ****** Data 01/01/2024',
                maxLines: 2,
                style: VZTypography.p2_400.copyWith(color: VZColors.g1),
              ),
            ]),
          ),
        ]),
        VZSpace.y20,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '150 apoios',
              style: VZTypography.p1_600.copyWith(color: VZColors.g1),
            ),
            VZSpace.y6,
            VZButtons.primary(onPressed: () {}, text: 'Apoiar')
          ],
        )
      ]),
    );
  }
}
