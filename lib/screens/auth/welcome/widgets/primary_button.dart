import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color colorButton;
  final Color textColor;
  final Color splashColor;

  const PrimaryButton({
    Key? key,
    required this.text,
    required this.press,
    required this.colorButton,
    required this.textColor,
    required this.splashColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return MaterialButton(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      padding: EdgeInsets.all(size * 0.05),
      elevation: size * 0.02,
      color: colorButton,
      textColor: textColor,
      minWidth: double.infinity,
      splashColor: splashColor,
      onPressed: press,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
