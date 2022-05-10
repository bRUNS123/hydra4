import 'package:flutter/material.dart';

class MaterialButtonMenu extends StatelessWidget {
  const MaterialButtonMenu({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(
          key: key,
        );

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return MaterialButton(
      minWidth: size * 0.18,
      onPressed: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: size * 0.07,
            color: Theme.of(context).colorScheme.secondary,
          ),
          Text(
            text,
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ],
      ),
    );
  }
}
