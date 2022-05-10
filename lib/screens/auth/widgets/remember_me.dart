import 'package:flutter/material.dart';

class RememberMe extends StatelessWidget {
  const RememberMe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Recuerdame',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        Transform.scale(
          scale: 0.8,
          child: SizedBox(
            height: 24,
            width: 24,
            child: Checkbox(
              side: MaterialStateBorderSide.resolveWith(
                (states) => BorderSide(
                  width: 2,
                  color: Theme.of(context).unselectedWidgetColor,
                ),
              ),
              value: false,
              onChanged: null,
            ),
          ),
        ),
      ],
    );
  }
}
