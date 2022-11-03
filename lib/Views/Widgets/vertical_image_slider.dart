import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class VerticalImageSlider extends StatefulWidget {
  const VerticalImageSlider({Key? key}) : super(key: key);

  @override
  State<VerticalImageSlider> createState() => _VerticalImageSliderState();
}

class _VerticalImageSliderState extends State<VerticalImageSlider> {
  final List<String> titles = [
    'China',
    'Germany',
    'Norway',
    'USA',
    'Japan',
  ];
  final List<String> imageList = [
    'https://www.planetware.com/wpimages/2020/01/china-in-pictures-beautiful-places-to-photograph-the-great-wall.jpg',
    'https://globalgrasshopper.com/wp-content/uploads/2011/11/Rothenburg-1000x692.jpg',
    'https://blog.tours4fun.com/wp-content/uploads/2020/01/fjord-hero-Flam-village-1230x600.jpg',
    'https://www.travelvina.com/wp-content/uploads/2017/07/Top-15-beautiful-places-to-visit-in-USA-post.jpg',
    'https://tripspi-prod.imgix.net/blogs/60ewipugMR/Pfiv0-david-edelstein-N4DbvTUDikw-unsplash.jpg?ixlib=js-2.3.2&w=1024&auto=compress&fit=crop&s=919afc22d09ca569980b1c99fd2af23d',
  ];
  @override
  Widget build(BuildContext context) {
    List<Widget> images = imageList.map((image) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.black45,
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.7), BlendMode.dstATop),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      );
    }).toList();
    return Container(
      child: VerticalCardPager(
        titles: titles,
        images: images,
        textStyle: const TextStyle(fontSize: 14, color: Colors.white),
      ),
    );
  }
}
