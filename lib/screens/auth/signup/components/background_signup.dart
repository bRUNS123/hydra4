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
    Size size = MediaQuery.of(context).size;
    return SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                context.read<ThemeBloc>().state.theme == AppTheme.darkTheme
                    ? 'assets/images/signup_topdark.png'
                    : 'assets/images/signup_toplight.png',
                width: size.width * 0.30,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                context.read<ThemeBloc>().state.theme == AppTheme.darkTheme
                    ? 'assets/images/main_bottomdark.png'
                    : 'assets/images/main_bottomlight.png',
                width: size.width * 0.20,
              ),
            ),
            child,
          ],
        ));
  }
}
