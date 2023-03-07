import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarMain extends StatelessWidget implements PreferredSizeWidget{
  const AppBarMain({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Citações Breaking Bad', style: GoogleFonts.rokkitt(fontSize: 25)),
      centerTitle: true,
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}