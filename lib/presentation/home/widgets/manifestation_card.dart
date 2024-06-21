import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:melhoracidade/data/dto/manifestation_dto.dart';
import 'package:melhoracidade/design_system/buttons/vz_button.dart';
import 'package:melhoracidade/design_system/colors/vz_colors.dart';
import 'package:melhoracidade/design_system/space/vz_space.dart';
import 'package:melhoracidade/design_system/typography/vz_typography.dart';
import 'package:melhoracidade/presentation/manifestation/pages/manifestation_details_page.dart';

class ManifestationCard extends StatefulWidget {
  const ManifestationCard({super.key, required this.manifestationDTO});

  final ManifestationDTO manifestationDTO;

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
                widget.manifestationDTO.title,
                style: VZTypography.p1_600.copyWith(color: VZColors.g1),
              ),
              VZSpace.y6,
              Text(
                widget.manifestationDTO.description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: VZTypography.p1_400.copyWith(color: VZColors.g1),
              ),
              VZSpace.y6,
              Text(
                widget.manifestationDTO.createdAt.toString(),
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
            VZButtons.iconTextButtonRight(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ManifestationDetailsPage(
                              manifestationDTO: widget.manifestationDTO)));
                },
                text: 'Ver mais',
                icon: Icons.chevron_right_outlined,
                iconColor: VZColors.colorScheme.primary,
                backgroudColor: VZColors.g6),
          ],
        )
      ]),
    );
  }
}
