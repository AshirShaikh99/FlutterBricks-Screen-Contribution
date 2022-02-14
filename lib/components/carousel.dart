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
    Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: DetailsBlock()),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 20.0),
        height: 400.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const PageScrollPhysics(), // this for snapping
          itemCount: children.length,
          itemBuilder: (_, index) => children[index],
        ),);
  }
}
