import 'package:breaking_bad_app/modules/quotes/ui/pages/detail_page.dart';
import 'package:breaking_bad_app/modules/quotes/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'modules/quotes/domain/models/quote.dart';
import 'modules/quotes/domain/models/quote_list.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Quote()),
        ChangeNotifierProvider(create: (_) => QuoteList()),
      ],
      child: MaterialApp(
          theme: ThemeData(
            appBarTheme:  AppBarTheme(
              titleTextStyle: TextStyle(color: Colors.white, fontSize: Theme.of(context).textTheme.titleLarge!.fontSize),
              backgroundColor: const Color.fromRGBO(58, 100, 24, 0.935),
            ),
            floatingActionButtonTheme: const FloatingActionButtonThemeData(
                backgroundColor: Color.fromRGBO(58, 100, 24, 0.935),
                iconSize: 20),
            textTheme: TextTheme(
              titleLarge: GoogleFonts.rokkitt(fontSize: 24),
              titleMedium: GoogleFonts.rokkitt(fontSize: 22),
              titleSmall: GoogleFonts.rokkitt(fontSize: 20),
            ),
          ),
          debugShowCheckedModeBanner: false,
          home: const InicialPage(),
          routes: {
            AppRoutes.detailPage: (context) => const DetailPage(),
          }),
    );
  }
}
