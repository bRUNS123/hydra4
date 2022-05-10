import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hydra/screens/menu/menu_view.dart';
import 'package:hydra/screens/user/user_view.dart';
import 'package:hydra/widgets/maindrawer/main_drawer.dart';

import '../../blocs/navigation_bar/navbar_bloc.dart';
import '../../generated/l10n.dart';
import '../../widgets/appbar_custom.dart';
import '../chat/chat_view.dart';
import '../config/config_view.dart';

import '../home/home_view.dart';

import 'widgets/floating_actionb.dart';

class MainView extends StatefulWidget {
  static const routeName = '/mainview';
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    final screens = [
      const MenuView(),
      const ChatView(),
      const HomeView(),
      const ConfigView(),
      const UserView(),
    ];

    final titulos = [
      S.of(context).menu,
      S.of(context).chat,
      S.of(context).hydra,
      S.of(context).configuration,
      S.of(context).profile,
    ];

    final items = <Widget>[
      Icon(Icons.menu_sharp, color: Theme.of(context).colorScheme.primary),
      Icon(Icons.chat, color: Theme.of(context).colorScheme.primary),
      Icon(Icons.home, color: Theme.of(context).colorScheme.primary),
      Icon(Icons.build_sharp, color: Theme.of(context).colorScheme.primary),
      Icon(Icons.person, color: Theme.of(context).colorScheme.primary),
    ];

    return BlocBuilder<NavigationBarBloc, NavigationBarState>(
      builder: (context, currentIndex) {
        return GestureDetector(
          onHorizontalDragEnd: (DragEndDetails details) {
            if (details.primaryVelocity! > 0 && currentIndex.index != 0) {
              context
                  .read<NavigationBarBloc>()
                  .add(ChangeIndexEvent(currentIndex.index - 1));
            } else if (details.primaryVelocity! < 0 &&
                currentIndex.index != 4) {
              context
                  .read<NavigationBarBloc>()
                  .add(ChangeIndexEvent(currentIndex.index + 1));
            } else if (currentIndex.index == 0 &&
                details.primaryVelocity! > 200) {
              context.read<NavigationBarBloc>().add(const ChangeIndexEvent(4));
            } else if (currentIndex.index == 4 &&
                details.primaryVelocity! < -200) {
              context.read<NavigationBarBloc>().add(const ChangeIndexEvent(0));
            }
          },
          child: Scaffold(
              extendBody: true,
              appBar: CustomAppBar(
                title: titulos[currentIndex.index],
              ),
              drawer: const MainDrawWidget(),
              floatingActionButton: const FloatingActionB(),
              floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
              bottomNavigationBar:
                  curvedNav(size, items, context, currentIndex.index),
              body: screens[currentIndex.index]),
        );
      },
    );
  }

  CurvedNavigationBar curvedNav(
      double size, List<Widget> items, BuildContext context, int currentIndex) {
    return CurvedNavigationBar(
        height: size * 0.14,
        items: items,
        index: currentIndex,
        animationDuration: const Duration(
          milliseconds: 400,
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        buttonBackgroundColor: Theme.of(context).colorScheme.tertiary,
        color: Theme.of(context).colorScheme.secondary,
        onTap: (index) =>
            context.read<NavigationBarBloc>().add(ChangeIndexEvent(index)));
  }
}
