import 'package:flutter/material.dart';

class AppBarMain extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  const AppBarMain({super.key, this.title, });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title:  Text(
         title ?? 'Frases Breaking Bad',
        ),
        centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
