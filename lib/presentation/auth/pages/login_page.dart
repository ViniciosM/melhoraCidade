import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melhoracidade/design_system/buttons/vz_button.dart';
import 'package:melhoracidade/design_system/colors/vz_colors.dart';
import 'package:melhoracidade/design_system/inputs/vz_text_field.dart';
import 'package:melhoracidade/design_system/space/vz_space.dart';
import 'package:melhoracidade/design_system/typography/vz_typography.dart';
import 'package:melhoracidade/presentation/auth/controllers/login_bloc.dart';
import 'package:melhoracidade/presentation/auth/controllers/login_event.dart';
import 'package:melhoracidade/presentation/auth/controllers/login_state.dart';
import 'package:melhoracidade/presentation/auth/pages/register_page.dart';
import 'package:melhoracidade/presentation/home/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

late TextEditingController _emailController;
late TextEditingController _passwordController;

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      bloc: LoginBloc(),
      listener: (context, state) {
        if (state.status == LoginStatus.logged) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => RegisterPage(
                        key: UniqueKey(),
                      )));
        } else if (state.status == LoginStatus.failure) {
          log('Não foi possível fazer login!!!');
        }
      },
      child: Scaffold(
        body: SingleChildScrollView(
          reverse: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                VZSpace.y40,
                Image.asset('assets/images/melhoracidade.png'),
                VZSpace.y40,
                VZTextField(
                  controller: _emailController,
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
                  onChanged: (text) {
                    _emailController.text = text;
                  },
                ),
                VZSpace.y20,
                VZTextField(
                  controller: _passwordController,
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
                  onChanged: (text) {
                    _passwordController.text = text;
                  },
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
                VZButtons.secondary(
                    onPressed: () {
                      if (_emailController.text.isNotEmpty &&
                          _passwordController.text.isNotEmpty) {
                        LoginBloc().add(DoLoginEvent(
                            email: _emailController.text,
                            password: _passwordController.text));
                      }

                      // Navigator.pushNamed(context, AuthRoutes.criarConta);
                    },
                    text: 'Criar conta'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
