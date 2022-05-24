import 'package:flutter/material.dart';
import 'package:hydra/screens/screens.dart';

import '../../widgets/maindrawer/widgets/build_search.dart';
import '../../widgets/maindrawer/widgets/draw_header.dart';

import '../../generated/l10n.dart';
import 'widgets/build_header.dart';
import 'widgets/build_menu.dart';

class MainDrawWidget extends StatelessWidget {
  const MainDrawWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Material(
      color: Theme.of(context).colorScheme.primary,
      child: ListView(
        children: <Widget>[
          const DrawHeader(),
          BuildHeader(
            name: 'Nombre1',
            email: 'email1@email.com',
            urlImage:
                'https://www.clipartmax.com/png/full/214-2143742_individuals-whatsapp-profile-picture-icon.png',
            onClicked: () {},
          ),
          const BuildSearch(),
          BuildMenuItem(
            text: S.of(context).community,
            icon: (Icons.people),
            onClicked: () => selectedPage(context, 0),
          ),
          BuildMenuItem(
            text: S.of(context).favorites,
            icon: (Icons.favorite_border),
            onClicked: () => selectedPage(context, 1),
          ),
          BuildMenuItem(
            text: S.of(context).announcement,
            icon: (Icons.new_releases_rounded),
            onClicked: () => selectedPage(context, 2),
          ),
          BuildMenuItem(
            text: S.of(context).files,
            icon: (Icons.file_copy_sharp),
            onClicked: () => selectedPage(context, 3),
          ),
          BuildMenuItem(
            text: S.of(context).users,
            icon: (Icons.supervised_user_circle_sharp),
            onClicked: () => selectedPage(context, 4),
          ),
          Divider(
            color: Theme.of(context).colorScheme.secondary,
          ),
          BuildMenuItem(
            text: S.of(context).notifications,
            icon: (Icons.notifications_outlined),
            onClicked: () => selectedPage(context, 5),
          ),
          BuildMenuItem(
            text: S.of(context).settings,
            icon: (Icons.settings),
            onClicked: () => selectedPage(context, 6),
          ),
          BuildMenuItem(
            text: S.of(context).logout,
            icon: (Icons.logout),
            onClicked: () => selectedPage(context, 7),
          ),
        ],
      ),
    ));
  }
}

void selectedPage(BuildContext context, int index) {
  Navigator.of(context).pop();
  switch (index) {
    case 0:
      Navigator.of(context).pushNamed(CommunityPage.routeName);

      break;
    case 1:
      Navigator.of(context).pushNamed(FavoritePage.routeName);
      break;
    case 4:
      Navigator.of(context).pushNamed(UsersScreen.routeName);
      break;
  }
}
