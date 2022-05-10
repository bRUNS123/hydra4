import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/language/language_bloc.dart';
import '../../../generated/l10n.dart';

class LanguagePopUpButton extends StatelessWidget {
  const LanguagePopUpButton({
    Key? key,
    required this.size,
  }) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      color: Theme.of(context).colorScheme.primary,
      itemBuilder: (BuildContext bc) {
        return [
          PopupMenuItem(
            child: Text(
              S.of(context).spanish,
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            onTap: () {
              context
                  .read<LanguageBloc>()
                  .add(const LocaleChangeEvent(locale: Locale('es')));
            },
          ),
          PopupMenuItem(
            child: Text(
              S.of(context).english,
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            onTap: () {
              context
                  .read<LanguageBloc>()
                  .add(const LocaleChangeEvent(locale: Locale('en')));
            },
          ),
        ];
      },
      icon: Icon(
        Icons.language_sharp,
        color: Theme.of(context).colorScheme.secondary,
        size: size * 0.1,
      ),
    );
  }
}
