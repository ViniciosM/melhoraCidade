import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:melhoracidade/data/dto/manifestation_dto.dart';
import 'package:melhoracidade/design_system/buttons/vz_button.dart';
import 'package:melhoracidade/design_system/space/vz_space.dart';

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
        title: Text(widget.manifestationDTO.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                VZSpace.y20,
                Container(
                  color: Colors.lightBlue,
                  height: 200,
                  width: 200,
                ),
                VZSpace.y20,
                Text(
                    'Texto texto texto texto Texto texto texto texto Texto texto texto texto Texto texto texto texto'),
                VZSpace.y20,
                Text('Pessoas apoiando a manifestação'),
                VZSpace.y20,
                VZButtons.primary(
                    onPressed: () {}, text: 'Apoiar manifestação'),
              ]),
        ),
      ),
    );
  }
}
