import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wrestling_news_app/Views/Pages/Export.dart';

class ImageGridView extends StatelessWidget {
  final String image;
  const ImageGridView({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ShowImage(
              image: image,
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(12),
        child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                image
              ),

        ),
      ),
    );
  }
}
