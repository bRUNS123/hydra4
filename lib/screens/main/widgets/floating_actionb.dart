import 'package:flutter/material.dart';

class FloatingActionB extends StatelessWidget {
  const FloatingActionB({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return FloatingActionButton(
      elevation: 30,
      splashColor: Theme.of(context).colorScheme.primary,
      hoverElevation: 10,
      child: Icon(
        Icons.add,
        color: Theme.of(context).colorScheme.primary,
      ),
      onPressed: () {},
      backgroundColor: Theme.of(context).colorScheme.secondary,
    );
  }
}
