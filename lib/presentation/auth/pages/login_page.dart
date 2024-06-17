import 'package:flutter/material.dart';
import 'package:melhoracidade/design_system/buttons/vz_button.dart';
import 'package:melhoracidade/design_system/colors/vz_colors.dart';
import 'package:melhoracidade/design_system/inputs/vz_input_decoration.dart';
import 'package:melhoracidade/design_system/inputs/vz_text_field.dart';
import 'package:melhoracidade/design_system/space/vz_space.dart';
import 'package:melhoracidade/design_system/typography/vz_typography.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
                width: 100,
              ),
              Text(
                'MELHORA CIDADE',
                style: VZTypography.h1_500.copyWith(color: VZColors.g1),
              ),
              VZSpace.y40,
              VZTextField(
                label: 'Email',
                type: VZTextFieldType.BORDER,
                keyboardType: TextInputType.emailAddress,
                //hintText: 'e-mail',
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
                //hintText: 'senha',
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
              VZButtons.primary(onPressed: () {}, text: 'Entrar'),
              VZSpace.y20,
              Text(
                'OU',
                style: VZTypography.h2_400.copyWith(color: VZColors.g1),
              ),
              VZSpace.y20,
              VZButtons.primary(onPressed: () {}, text: 'Criar coonta'),
            ],
          ),
        ),
      ),
    );
  }
}
