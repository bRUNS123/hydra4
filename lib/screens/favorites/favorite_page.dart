import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../../widgets/appbar_custom.dart';

class FavoritePage extends StatelessWidget {
  final String? title;
  static const routeName = '/favoritepage';
  const FavoritePage({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: S.of(context).favorites,
        ),
        body: const Center());
  }
}
