import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../blocs/theme/theme_bloc.dart';
import '../../../../constants/app_theme.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                context.read<ThemeBloc>().state.theme == AppTheme.darkTheme
                    ? 'assets/images/main_topdark.png'
                    : 'assets/images/main_toplight.png',
                width: size * 0.25,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                context.read<ThemeBloc>().state.theme == AppTheme.darkTheme
                    ? 'assets/images/login_bottomdark.png'
                    : 'assets/images/login_bottomlight.png',
                width: size * 0.25,
              ),
            ),
            child,
          ],
        ));
  }
}
