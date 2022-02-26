import 'package:flutter/material.dart';
import '../components/details_block.dart';
import 'animated_details_block.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(
        initialPage: _currentPage, viewportFraction: 0.8, keepPage: false);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FractionallySizedBox(
          heightFactor: 0.80,
          child: PageView.builder(
            itemCount: 3,
            controller: _pageController,
            itemBuilder: (context, index) {
              return animatedCarousel(index, _pageController);
            },
          ),
        ),
      ],
    );
  }
}
