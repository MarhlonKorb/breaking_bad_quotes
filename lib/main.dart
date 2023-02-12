import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'modules/quotes/ui/pages/inicial_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Color.fromRGBO(58, 100, 24, 0.935), shadowColor: Color(0x00000032)),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: Color.fromRGBO(58, 100, 24, 0.935),iconSize: 20),
        
      ),
      debugShowCheckedModeBanner: false,
      home:   const InicialPage(),
    );
  }
}

