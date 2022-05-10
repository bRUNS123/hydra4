import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydra/screens/auth/login/login_screen.dart';
import 'package:hydra/screens/auth/signup/signup_screen.dart';
import 'package:hydra/screens/config/widgets/theme_popup_button.dart';
import '../../../generated/l10n.dart';
import '../../../services/local_storage.dart';
import '/blocs/theme/theme_bloc.dart';
import '/constants/app_theme.dart';
import '/main.dart';
import '/screens/auth/welcome/widgets/primary_button.dart';

// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = '/welcome';

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    final themeBloc = context.read<ThemeBloc>();
    final currentThemeName =
        LocalStorage.prefs.getString('themeName') ?? 'dark';
    final asset = themeBloc.getAssetByThemeName(currentThemeName);

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ThemePopUpButton(size: size),
                  ],
                ),
                const Spacer(flex: 4),
                Image.asset(asset),
                const Spacer(flex: 5),
                PrimaryButton(
                  text: S.of(context).login,
                  // text: AppLocalizations.of(context)!.iniciarSesion,
                  press: () {
                    Navigator.of(context)
                        .pushReplacementNamed(LoginScreen.routeName);
                  },
                  colorButton: Theme.of(context).colorScheme.primary,
                  textColor: Theme.of(context).colorScheme.secondary,
                  splashColor: Theme.of(context).colorScheme.secondary,
                ),
                const SizedBox(height: 15),
                PrimaryButton(
                  text: S.of(context).signup,
                  press: () {
                    Navigator.of(context)
                        .pushReplacementNamed(SignUpScreen.routeName);
                  },
                  colorButton: Theme.of(context).colorScheme.secondary,
                  textColor: Theme.of(context).colorScheme.primary,
                  splashColor: Theme.of(context).colorScheme.primary,
                ),
                const Spacer(flex: 5),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).colorScheme.secondary,
                      onPrimary: Theme.of(context).colorScheme.primary),
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(MainApp.routeName);
                  },
                  child: const Text(
                    'HOME',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: size * 0.2),
                const Spacer(flex: 4),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

imageAssetTheme(context) {
  context.context.read<ThemeBloc>();
  if (context.read<ThemeBloc>().state.theme == AppTheme.darkTheme) {
    return 'assets/images/hydralight.png';
  }
  if (context.read<ThemeBloc>().state.theme == AppTheme.lightTheme) {
    return 'assets/images/hydradark.png';
  }
  if (context.read<ThemeBloc>().state.theme == AppTheme.blueTheme) {
    return 'assets/images/hydrablue.png';
  }
}
