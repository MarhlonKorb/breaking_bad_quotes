import 'package:flutter/material.dart';

import '../../utils/app_routes.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: const EdgeInsets.all(18),
      children: [
        ListTile(
          leading: const Text('Início'),
          onTap: () => Navigator.of(context).pushNamed(AppRoutes.inicialPage)
        ),
        ListTile(
          leading: const Text('Frases Favoritas'),
          onTap: () => Navigator.of(context).pushNamed(AppRoutes.quotesFavoritesPage)
        ),
        ListTile(
          leading: const Text('Sobre'),
          onTap: () {},
        ),
      ],
    ));
  }
}