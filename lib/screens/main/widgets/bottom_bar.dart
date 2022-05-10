import 'package:flutter/material.dart';

import 'material_button.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 10,
      elevation: 20,
      color: Theme.of(context).colorScheme.primary,
      child: (SizedBox(
        height: size * 0.15,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                MaterialButtonMenu(
                  text: 'Menu',
                  icon: Icons.menu_sharp,
                ),
                MaterialButtonMenu(
                  text: 'Chat',
                  icon: Icons.chat,
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                MaterialButtonMenu(
                  text: 'Config.',
                  icon: Icons.build_circle_sharp,
                ),
                MaterialButtonMenu(
                  text: 'Perfil',
                  icon: Icons.person,
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
