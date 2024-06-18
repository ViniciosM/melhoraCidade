import 'package:flutter/material.dart';
import 'package:melhoracidade/design_system/buttons/vz_button.dart';
import 'package:melhoracidade/design_system/colors/vz_colors.dart';
import 'package:melhoracidade/design_system/inputs/vz_text_field.dart';
import 'package:melhoracidade/design_system/space/vz_space.dart';
import 'package:melhoracidade/design_system/typography/vz_typography.dart';
import 'package:melhoracidade/presentation/auth/auth_routes.dart';
import 'package:melhoracidade/presentation/auth/pages/register_page.dart';
import 'package:melhoracidade/presentation/home/home_page.dart';

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
              Image.asset('assets/images/melhoracidade.png'),
              VZSpace.y40,
              VZTextField(
                label: 'Email',
                type: VZTextFieldType.BORDER,
                keyboardType: TextInputType.emailAddress,
                hintText: 'E-mail',
                prefixIcon: const Icon(Icons.email_outlined),
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
                prefixIcon: const Icon(Icons.lock_outline),
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
              VZSpace.y8,
              Align(
                alignment: Alignment.bottomRight,
                child: VZButtons.textButton(
                    onPressed: () {}, description: 'Esqueceu a senha?'),
              ),
              VZSpace.y40,
              VZButtons.primary(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePage(
                                  key: UniqueKey(),
                                )));
                  },
                  text: 'Entrar'),
              VZSpace.y20,
              Text(
                'OU',
                style: VZTypography.p1_600.copyWith(color: VZColors.g1),
              ),
              VZSpace.y20,
              VZButtons.secondary(
                  onPressed: () {
                    // Navigator.pushNamed(context, AuthRoutes.criarConta);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterPage(
                                  key: UniqueKey(),
                                )));
                  },
                  text: 'Criar conta'),
            ],
          ),
        ),
      ),
    );
  }
}
