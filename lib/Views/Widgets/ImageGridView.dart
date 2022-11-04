import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ImageGridView extends StatefulWidget {
  const ImageGridView({
    Key? key,
    required this.image,
  }) : super(key: key);
  final image;
  @override
  State<ImageGridView> createState() => _ImageGridViewState();
}

class _ImageGridViewState extends State<ImageGridView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      child: MasonryGridView.builder(
        scrollDirection: Axis.vertical,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        gridDelegate:
        SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 15,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(widget.image),
          );
        },
      ),
    );
  }
}