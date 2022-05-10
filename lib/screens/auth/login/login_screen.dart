import 'package:flutter/material.dart';
import 'components/body_login.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemUiOverlayStyle.light;
    return const Scaffold(
      body: Body(),
    );
  }
}
