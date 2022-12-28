import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wrestling_news_app/Views/Pages/Export.dart';

import '../../Provider/DarkThemeProvider.dart';

class ImageGridView extends StatelessWidget {
  final String image;
  const ImageGridView({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
        // left: 12,
        // right: 12,
        bottom: 12,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          image,
          frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
            return child;
          },
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) {
              return child;
            } else {
              return Center(
                child: CustomCircularProgressIndicator(
                  themeState: themeState,
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
