import 'package:breaking_bad_app/modules/quotes/domain/factory/author_image_factory.dart';
import 'package:breaking_bad_app/modules/quotes/domain/factory/author_info_factory.dart';
import 'package:breaking_bad_app/modules/quotes/ui/widgets/appbar_main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Widget responsável pelos detalhes do personagem
class DetailPage extends StatelessWidget {
  final String? path;
  final double? width;

  const DetailPage({super.key, this.path, this.width});

  @override
  Widget build(BuildContext context) {
    final author = ModalRoute.of(context)!.settings.arguments as String;
    final widthDevicePixelRatio =
        MediaQuery.of(context).devicePixelRatio.toDouble() / 0.0;

    final heightDevice =
        MediaQuery.of(context).devicePixelRatio.toDouble() / 0.010;

    return Scaffold(
      appBar: const AppBarMain(),
      body: SizedBox(
        child: Hero(
          tag:  author,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).pop(),
              child: Padding(
                padding: const EdgeInsets.all(38.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(AuthorImageFactory().getPathPictureAuthor(author)),
                      fit: BoxFit.scaleDown,
                      width: widthDevicePixelRatio,
                      height: heightDevice,
                      
                    ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Card(
                        child: Text(style: GoogleFonts.rokkitt(fontSize: 20, wordSpacing: 3), AuthorInfoFactory().getInfoAuthor(author)),
                                         ),
                     )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
