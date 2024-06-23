import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:melhoracidade/core/utils/date_format_utils.dart';
import 'package:melhoracidade/data/dto/manifestation_dto.dart';
import 'package:melhoracidade/design_system/buttons/vz_button.dart';
import 'package:melhoracidade/design_system/colors/vz_colors.dart';
import 'package:melhoracidade/design_system/space/vz_space.dart';
import 'package:melhoracidade/design_system/typography/vz_typography.dart';

class ManifestationDetailsPage extends StatefulWidget {
  const ManifestationDetailsPage({super.key, required this.manifestationDTO});

  final ManifestationDTO manifestationDTO;

  @override
  State<ManifestationDetailsPage> createState() =>
      _ManifestationDetailsPageState();
}

class _ManifestationDetailsPageState extends State<ManifestationDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.manifestationDTO.title,
            style: VZTypography.h2_500.copyWith(color: VZColors.g0)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              VZSpace.y20,
              VZSpace.y20,
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  border: Border.all(color: VZColors.g0),
                ),
                child: Image.asset(
                  widget.manifestationDTO.images,
                  fit: BoxFit
                      .cover, // Ajuste de como a imagem é exibida dentro do Container
                ),
              ),
              VZSpace.y20,
              Text(
                widget.manifestationDTO.description,
                textAlign: TextAlign.justify,
                maxLines: 10,
                style: VZTypography.h2_400.copyWith(color: VZColors.g0),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  DateFormatUtils.formatDateExtended(
                      widget.manifestationDTO.createdAt),
                  textAlign: TextAlign.right,
                  maxLines: 1,
                  style: VZTypography.p2_400.copyWith(color: VZColors.g0),
                ),
              ),
              VZSpace.y20,
              Spacer(),
              VZSpace.y20,
              Text(
                '1000 pessoas apoiando a manifestação',
                style: VZTypography.p1_400.copyWith(color: VZColors.g0),
              ),
              VZSpace.y20,
              VZButtons.primary(onPressed: () {}, text: 'Apoiar manifestação'),
              VZSpace.y20,
            ]),
      ),
    );
  }
}
