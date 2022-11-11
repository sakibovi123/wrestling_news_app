import 'package:flutter/material.dart';
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
        margin: const EdgeInsets.only(
          top: 40,
          // left: 12,
          // right: 12,
          bottom: 12,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(image),
        ),
      ),
    );
  }
}
