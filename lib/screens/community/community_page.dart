import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../../widgets/appbar_custom.dart';

class CommunityPage extends StatelessWidget {
  final String? title;
  static const routeName = '/communitypage';
  const CommunityPage({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: S.of(context).community,
        ),
        body: const Center());
  }
}
