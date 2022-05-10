import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydra/blocs/theme/theme_bloc.dart';

import '/constants/app_theme.dart';

class ChangeThemeButtonBloc extends StatelessWidget {
  const ChangeThemeButtonBloc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch.adaptive(
      activeTrackColor: Theme.of(context).colorScheme.secondary,
      activeColor: Theme.of(context).colorScheme.primary,
      inactiveTrackColor: Theme.of(context).colorScheme.secondary,
      inactiveThumbColor: Theme.of(context).colorScheme.primary,
      value: context.watch<ThemeBloc>().state.theme == AppTheme.lightTheme,
      onChanged: null,
      // (themechange) {
      //   if (themechange) {
      //     context.read<ThemeBloc>().add(OnThemeChange(AppTheme.lightTheme));
      //   } else {
      //     context.read<ThemeBloc>().add(OnThemeChange(AppTheme.darkTheme));
      //   }
      // },
    );
  }
}
