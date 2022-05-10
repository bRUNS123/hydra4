import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hydra/constants/app_theme.dart';
import 'package:hydra/services/local_storage.dart';

import '../../constants/constants.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final String currentTheme;

  ThemeBloc(this.currentTheme)
      : super(ThemeState(theme: getThemeByName(currentTheme))) {
    on<OnThemeChange>(
      (event, emit) {
        final theme = getThemeByName(event.themeName);

        LocalStorage.prefs.setString('themeName', event.themeName);
        emit(state.copyWith(theme: theme));
      },
    );
  }

  static ThemeData getThemeByName(String name) {
    switch (name) {
      case 'light':
        return AppTheme.lightTheme;
      case 'dark':
        return AppTheme.darkTheme;
      case 'blue':
        return AppTheme.blueTheme;

      default:
        return AppTheme.lightTheme;
    }
  }

  String getAssetByThemeName(String name) {
    switch (name) {
      case 'dark':
        return 'assets/images/hydradark.png';
      case 'light':
        return 'assets/images/hydralight.png';
      case 'blue':
        return 'assets/images/hydrablue.png';

      default:
        return 'assets/images/hydradark.png';
    }
  }

  String getMainAssetByThemeName(String name) {
    switch (name) {
      case 'dark':
        return 'assets/images/hydramaindark.png';
      case 'light':
        return 'assets/images/hydramainlight.png';
      case 'blue':
        return 'assets/images/hydramainblue.png';

      default:
        return 'assets/images/hydramaindark.png';
    }
  }

  ColorFilter getColorFilterAssetByThemeName(String name) {
    switch (name) {
      case 'dark':
        return ColorFilter.mode(
            scaffoldColorDark.withOpacity(0.2), BlendMode.dstATop);
      case 'light':
        return ColorFilter.mode(
            scaffoldColorLight!.withOpacity(0.2), BlendMode.dstATop);
      case 'blue':
        return ColorFilter.mode(
            scaffoldColorBlue.withOpacity(0.2), BlendMode.dstATop);

      default:
        return ColorFilter.mode(
            scaffoldColorDark.withOpacity(0.1), BlendMode.dstATop);
    }
  }
}
