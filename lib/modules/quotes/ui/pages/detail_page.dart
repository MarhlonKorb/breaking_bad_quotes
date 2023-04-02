import 'package:breaking_bad_app/modules/quotes/domain/factory/author_image_factory.dart';
import 'package:breaking_bad_app/modules/quotes/domain/factory/author_info_factory.dart';
import 'package:breaking_bad_app/modules/quotes/ui/widgets/appbar_main.dart';
import 'package:flutter/material.dart';

/// Widget responsável pelos detalhes do personagem
class DetailPage extends StatelessWidget {
  final String? path;

  const DetailPage({super.key, this.path});

  @override
  Widget build(BuildContext context) {
    final author = ModalRoute.of(context)!.settings.arguments as String;
    final widthDevicePixelRatio =
        MediaQuery.of(context).devicePixelRatio.toDouble() / 0.0;

    final heightDevice =
        MediaQuery.of(context).devicePixelRatio.toDouble() / 0.011;
    // final heightDevice =
        // MediaQuery.of(context).size.aspectRatio / 0.0028;
    return Scaffold(
      appBar: const AppBarMain(),
      body: Hero(
        tag: author,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: Padding(
              padding: const EdgeInsets.all(38.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    author,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Image(
                    image: AssetImage(
                      AuthorImageFactory().getPathPictureAuthor(author),
                    ),
                    fit: BoxFit.scaleDown,
                    width: widthDevicePixelRatio,
                    height: heightDevice,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Text(
                        style: Theme.of(context).textTheme.titleSmall,
                        AuthorInfoFactory().getInfoAuthor(author),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
