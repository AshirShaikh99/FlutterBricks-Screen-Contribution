import 'package:flutter/material.dart';
import '../components/details_block.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  List<Widget> children = const [
    DetailsBlock(),
    DetailsBlock(),
    DetailsBlock(),
  ];

  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController =
        PageController(initialPage: _currentPage, viewportFraction: 0.8,keepPage: false);
  
  
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
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
              return carouselView(index);
            },
          ),
        ),
      ],
    );
  }
Widget carouselView(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 0.0;
        if (_pageController.position.haveDimensions) {
          value = index.toDouble() - (_pageController.page ?? 0);
          value = (value * 0.038).clamp(-1, 1);
          print("value $value index $index");
        }
        return Transform.rotate(
          angle: 3.14 * value,
          child: children[index],
        );
      },
    );
  }
}