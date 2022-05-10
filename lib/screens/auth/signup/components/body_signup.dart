import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../../../../blocs/theme/theme_bloc.dart';
import '../../../../constants/app_theme.dart';
import '../../widgets/already_have_an_account_check.dart';
import '../../widgets/rounded_button.dart';
import '../../widgets/rounded_password_field.dart';
import '../../widgets/rounder_input_field.dart';
import 'background_signup.dart';

import '../../Login/login_screen.dart';
import 'or_divider.dart';
import 'social_icon.dart';

class Body extends StatelessWidget {
  final Widget child;

  const Body({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: size.height * 0.02),
              Text(
                'REGISTRARSE',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                context.read<ThemeBloc>().state.theme == AppTheme.darkTheme
                    ? 'assets/images/hydrasignupdark.svg'
                    : 'assets/images/hydrasignuplight.svg',
                height: size.height * 0.35,
              ),
              RoundedInputField(
                hintText: 'Tu Correo',
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                onChanged: (value) {},
              ),
              RoundedButton(
                text: 'REGISTRARSE',
                press: () {},
                colorText: Theme.of(context).colorScheme.secondary,
                colorBack: Theme.of(context).colorScheme.primary,
              ),
              SizedBox(height: size.height * 0.01),
              AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Navigator.of(context)
                      .pushReplacementNamed(LoginScreen.routeName);
                },
              ),
              const OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocalIcon(
                    iconSrc: context.read<ThemeBloc>().state.theme ==
                            AppTheme.darkTheme
                        ? "assets/icons/googleplusdark.svg"
                        : "assets/icons/googlepluslight.svg",
                    press: () {},
                  ),
                  SocalIcon(
                    iconSrc: context.read<ThemeBloc>().state.theme ==
                            AppTheme.darkTheme
                        ? "assets/icons/facebookdark.svg"
                        : "assets/icons/facebooklight.svg",
                    press: () {},
                  ),
                  SizedBox(height: size.height * 0.01),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Future signIn() async {
  //   final user = await GoogleSignInApi.login();
  //    if (user == null) {
  //      GoogleSignInAccount
  //      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoggedInPage(user: user),));

  //    }

  // }
}
