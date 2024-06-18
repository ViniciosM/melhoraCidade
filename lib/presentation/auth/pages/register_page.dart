import 'package:flutter/material.dart';
import 'package:melhoracidade/design_system/buttons/vz_button.dart';
import 'package:melhoracidade/design_system/colors/vz_colors.dart';
import 'package:melhoracidade/design_system/inputs/vz_text_field.dart';
import 'package:melhoracidade/design_system/space/vz_space.dart';
import 'package:melhoracidade/design_system/typography/vz_typography.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          reverse: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                VZSpace.y40,
                Text(
                  'Criar conta',
                  style: VZTypography.h1_600.copyWith(color: VZColors.g1),
                ),
                VZSpace.y40,
                VZTextField(
                  label: 'Nome',
                  type: VZTextFieldType.BORDER,
                  keyboardType: TextInputType.name,
                  hintText: 'Nome',

                  //errorText: 'Error',
                  //text: 'inputText',
                  hintStyle: VZTypography.p2_400.copyWith(
                    color: VZColors.g1,
                  ),
                  //mask: _getMask(widget.callBloc.phoneNumber),
                  //limitLength: _getLengthMax(widget.callBloc.phoneNumber),
                  onChanged: (text) {},
                ),
                VZSpace.y20,
                VZTextField(
                  label: 'Email',
                  type: VZTextFieldType.BORDER,
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'E-mail',

                  //errorText: 'Error',
                  //text: 'inputText',
                  hintStyle: VZTypography.p2_400.copyWith(
                    color: VZColors.g1,
                  ),
                  //mask: _getMask(widget.callBloc.phoneNumber),
                  //limitLength: _getLengthMax(widget.callBloc.phoneNumber),
                  onChanged: (text) {},
                ),
                VZSpace.y20,
                VZTextField(
                  label: 'Senha',
                  type: VZTextFieldType.BORDER,
                  keyboardType: TextInputType.visiblePassword,

                  obscureText: true,
                  hintText: 'Senha',
                  //errorText: 'Error',
                  //text: 'inputText',
                  hintStyle: VZTypography.p2_400.copyWith(
                    color: VZColors.g1,
                  ),
                  //mask: _getMask(widget.callBloc.phoneNumber),
                  //limitLength: _getLengthMax(widget.callBloc.phoneNumber),
                  onChanged: (text) {},
                ),
                VZSpace.y20,
                VZTextField(
                  label: 'CEP',
                  type: VZTextFieldType.BORDER,
                  keyboardType: TextInputType.number,
                  hintText: 'CEP',
                  //errorText: 'Error',
                  //text: 'inputText',
                  hintStyle: VZTypography.p2_400.copyWith(
                    color: VZColors.g1,
                  ),
                  //mask: _getMask(widget.callBloc.phoneNumber),
                  //limitLength: _getLengthMax(widget.callBloc.phoneNumber),
                  onChanged: (text) {},
                ),
                VZSpace.y20,
                VZTextField(
                  label: 'Cidade',
                  type: VZTextFieldType.BORDER,

                  obscureText: true,
                  hintText: 'Cidade',
                  //errorText: 'Error',
                  //text: 'inputText',
                  hintStyle: VZTypography.p2_400.copyWith(
                    color: VZColors.g1,
                  ),
                  //mask: _getMask(widget.callBloc.phoneNumber),
                  //limitLength: _getLengthMax(widget.callBloc.phoneNumber),
                  onChanged: (text) {},
                ),
                VZSpace.y20,
                VZTextField(
                  label: 'Estado',
                  type: VZTextFieldType.BORDER,

                  obscureText: true,
                  hintText: 'Estado',
                  //errorText: 'Error',
                  //text: 'inputText',
                  hintStyle: VZTypography.p2_400.copyWith(
                    color: VZColors.g1,
                  ),
                  //mask: _getMask(widget.callBloc.phoneNumber),
                  //limitLength: _getLengthMax(widget.callBloc.phoneNumber),
                  onChanged: (text) {},
                ),
                VZSpace.y40,
                VZButtons.primary(onPressed: () {}, text: 'Salvar'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
