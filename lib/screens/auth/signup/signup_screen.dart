import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'components/body_signup.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/signup';
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemUiOverlayStyle.light;
    return Scaffold(
      body: Body(
        child: Column(),
      ),
    );
  }
}
