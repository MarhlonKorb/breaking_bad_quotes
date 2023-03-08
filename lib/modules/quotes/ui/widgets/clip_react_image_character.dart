import 'package:breaking_bad_app/modules/quotes/domain/factory/author_image_factory.dart';
import 'package:flutter/material.dart';
import '../../utils/app_routes.dart';

/// Widget responsável por montar a estrutura de imagem do personagem
class ClipReactImageCharacter extends StatelessWidget {
  final String? author;

  const ClipReactImageCharacter({
    super.key,
    this.author,
  });

  @override
  Widget build(BuildContext context) {
    final widthDevice =
        MediaQuery.of(context).devicePixelRatio.toDouble() / 0.015;
    final heightDevice =
        MediaQuery.of(context).devicePixelRatio.toDouble() / 0.010;

    return SizedBox(
      child: InkWell(
        onTap: () => Navigator.of(context).pushNamed(AppRoutes.detailPage,
            arguments: author!),
        child: ClipRRect(
          child: Image(
            image:
                AssetImage(AuthorImageFactory().getPathPictureAuthor(author!)),
            width: widthDevice,
            height: heightDevice,
          ),
        ),
      ),
    );
  }
}
