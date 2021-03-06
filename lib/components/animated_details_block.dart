import 'package:brickscontribution/constants.dart';
import 'package:flutter/material.dart';
import 'details_block.dart';

List<Widget> children = const [
  DetailsBlock(
    null,
    kImgUrl,
    "GLDN DRGN",
    "Founder: 7KZAZ",
    "Earnings",
    ".7 Sol",
    "Members",
    "600",
  ),
  DetailsBlock(
    null,
    kImgUrl,
    "GLDN DRGN",
    "Founder: 7KZAZ",
    "Earnings",
    ".7 Sol",
    "Members",
    "600",
  ),
  DetailsBlock(
    null,
    kImgUrl,
    "GLDN DRGN",
    "Founder: 7KZAZ",
    "Earnings",
    ".7 Sol",
    "Members",
    "600",
  ),
];

Widget animatedCarousel(int index, PageController pageController) {
  return AnimatedBuilder(
    animation: pageController,
    builder: (context, child) {
      double value = 0.0;
      if (pageController.position.haveDimensions) {
        value = index.toDouble() - (pageController.page ?? 0);
        value = (value * 0.038).clamp(-1, 1);
      }
      return Transform.rotate(
        angle: 3.14 * value,
        child: children[index],
      );
    },
  );
} // Animated carousel implemented and you use it in your apps