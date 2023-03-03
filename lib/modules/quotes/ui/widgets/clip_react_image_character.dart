import 'package:breaking_bad_app/modules/quotes/domain/factory/author_image_factory.dart';
import 'package:flutter/material.dart';

class ClipReactImageCharacter extends StatelessWidget {
  final String? author;

  const ClipReactImageCharacter({
    super.key,
    this.author,
  });

  @override
  Widget build(BuildContext context) {
    final widthDevicePixelRatio =
        MediaQuery.of(context).devicePixelRatio.toDouble() / 0.02;
    final heightDevicePixelRatio =
        MediaQuery.of(context).devicePixelRatio.toDouble() / 0.010;
    return Container(
      constraints: const BoxConstraints(),
      child: FittedBox(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image(
            image:
                AssetImage(AuthorImageFactory().getPicturePathAuthor(author!)),
            width: widthDevicePixelRatio,
            height: heightDevicePixelRatio,
          ),
        ),
      ),
    );
  }
}
