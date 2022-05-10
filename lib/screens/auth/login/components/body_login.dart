import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../blocs/theme/theme_bloc.dart';
import '../../../../constants/app_theme.dart';
import '../../signup/signup_screen.dart';
import '../../welcome/welcome_screen.dart';
import '../../widgets/already_have_an_account_check.dart';
import '../../widgets/remember_me.dart';

import '../../widgets/rounded_button.dart';
import '../../widgets/rounder_input_field.dart';
import '../../widgets/rounded_password_field.dart';

import 'background_login.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SafeArea(
        child: Background(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: size * 0.03),
                Text(
                  'HλδRA',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: size * 0.1,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                SizedBox(height: size * 0.05),
                SvgPicture.asset(
                  context.read<ThemeBloc>().state.theme == AppTheme.darkTheme
                      ? 'assets/images/hydralogindark.svg'
                      : 'assets/images/hydraloginlight.svg',
                  height: size * 0.8,
                ),
                SizedBox(height: size * 0.03),
                RoundedInputField(
                  hintText: 'Correo o Usuario',
                  onChanged: (value) {},
                ),
                RoundedPasswordField(
                  onChanged: (value) {},
                ),
                const RememberMe(),
                RoundedButton(
                  text: 'INICIAR',
                  colorText: Theme.of(context).colorScheme.secondary,
                  colorBack: Theme.of(context).colorScheme.primary,
                  press: () {
                    // Navigator.of(context)
                    //     .pushReplacementNamed(HomeScreen.routeName);
                  },
                ),
                SizedBox(height: size * 0.03),
                AlreadyHaveAnAccountCheck(
                  press: () {
                    Navigator.of(context)
                        .pushReplacementNamed(SignUpScreen.routeName);
                  },
                ),
                SizedBox(height: size * 0.02),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(WelcomeScreen.routeName);
                  },
                  child: const Text('Autenticación de APP'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
