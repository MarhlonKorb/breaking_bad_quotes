import 'package:breaking_bad_app/modules/quotes/ui/widgets/appbar_main.dart';
import 'package:flutter/material.dart';

/// Widget responsável pelos detalhes do personagem
class DetailPage extends StatelessWidget {
  final String? path;
  final double? width;

  const DetailPage({super.key, this.path, this.width});

  @override
  Widget build(BuildContext context) {
    final imagePath = ModalRoute.of(context)!.settings.arguments as String;
    final widthDevicePixelRatio =
        MediaQuery.of(context).devicePixelRatio.toDouble() / 0.0;

    final heightDevice =
        MediaQuery.of(context).devicePixelRatio.toDouble() / 0.010;

    return Scaffold(
      appBar: const AppBarMain(),
      body: SizedBox(
        child: Hero(
          tag: imagePath,
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
                      image: AssetImage(imagePath),
                      fit: BoxFit.scaleDown,
                      width: widthDevicePixelRatio,
                      height: heightDevice,
                    ),
                    const Card(
                      child: Text("data"),
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
