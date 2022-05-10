import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/theme/theme_bloc.dart';
import '../../../constants/app_theme.dart';
import '../../../generated/l10n.dart';

class ThemePopUpButton extends StatelessWidget {
  const ThemePopUpButton({
    Key? key,
    required this.size,
  }) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      color: Theme.of(context).colorScheme.primary,
      itemBuilder: (BuildContext bc) {
        return [
          PopupMenuItem(
            child: Text(
              S.of(context).dark,
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            onTap: () {
              context
                  .read<ThemeBloc>()
                  .add(const OnThemeChange(themeName: 'dark'));
            },
          ),
          PopupMenuItem(
            child: Text(
              S.of(context).light,
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            onTap: () {
              context
                  .read<ThemeBloc>()
                  .add(const OnThemeChange(themeName: 'light'));
            },
          ),
          PopupMenuItem(
            child: Text(
              S.of(context).blue,
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            onTap: () {
              context
                  .read<ThemeBloc>()
                  .add(const OnThemeChange(themeName: 'blue'));
            },
          ),
        ];
      },
      icon: Icon(
        context.read<ThemeBloc>().state.theme == AppTheme.darkTheme
            ? Icons.brightness_medium_sharp
            : Icons.brightness_medium_outlined,
        color: Theme.of(context).colorScheme.secondary,
        size: size * 0.1,
      ),
    );
  }
}
