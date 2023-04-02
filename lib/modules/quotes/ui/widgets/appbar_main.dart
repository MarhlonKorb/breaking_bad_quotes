import 'package:flutter/material.dart';

class AppBarMain extends StatelessWidget implements PreferredSizeWidget {
  const AppBarMain({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title:  const Text(
          'Citações Breaking Bad',
          // style: TextStyle(fontSize: Theme.of(context).textTheme.titleMedium!.fontSize),
        ),
        centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
