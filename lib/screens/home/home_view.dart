import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydra/screens/auth/welcome/welcome_screen.dart';

import '../../blocs/theme/theme_bloc.dart';
import '../../services/local_storage.dart';

class HomeView extends StatelessWidget {
  static const routeName = '/homeview';

  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeBloc = context.read<ThemeBloc>();
    final currentThemeName =
        LocalStorage.prefs.getString('themeName') ?? 'dark';
    final asset = themeBloc.getMainAssetByThemeName(currentThemeName);
    final colorFilter =
        themeBloc.getColorFilterAssetByThemeName(currentThemeName);

    return Stack(children: [
      Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.scaleDown,
              colorFilter: colorFilter,
              image: AssetImage(asset),
            ),
          ),
        ),
      ),
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 5,
            ),
            const Spacer(
              flex: 3,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(WelcomeScreen.routeName);
                },
                child: const Text('Autenticación de APP'),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    ]);
  }
}
