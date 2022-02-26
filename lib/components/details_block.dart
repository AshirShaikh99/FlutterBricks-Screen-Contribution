import 'package:brickscontribution/constants.dart';
import 'package:brickscontribution/utils/gradient_text.dart';
import 'package:flutter/material.dart';

class DetailsBlock extends StatefulWidget {
  const DetailsBlock(
    Key? key,
    this.imgUrl,
    this.txt1,
    this.txt2,
    this.txt3,
    this.txt4,
    this.txt5,
    this.txt6,
  ) : super(key: key);
  final String imgUrl, txt1, txt2, txt3, txt4, txt5, txt6;

  @override
  _DetailsBlockState createState() => _DetailsBlockState();
}

class _DetailsBlockState extends State<DetailsBlock>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    )..repeat(reverse: true); // automatically animation will be started
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: FractionallySizedBox(
        heightFactor: 1.0,
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xff3D404E),
            borderRadius: BorderRadius.circular(32.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 10,
                blurRadius: 5,
                offset: const Offset(0, 10), // changes position of shadow
              ),
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                top: 20.0,
                left: 28.0,
                child: Image(
                  width: 220.0,
                  image: AssetImage(widget.imgUrl),
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 250.0,
                left: 80.0,
                child: Text(
                  widget.txt1,
                  style: kHeading3,
                ),
              ),
              Positioned(
                top: 280.0,
                left: 98.0,
                child: Text(
                  widget.txt2,
                  style: kHeading4,
                ),
              ),
              Positioned(
                top: 350.0,
                left: 44.0,
                child: Text(
                  widget.txt3,
                  style: kHeading5,
                ),
              ),
              Positioned(
                top: 390.0,
                left: 46.0,
                child: GradientText(null, widget.txt4, 20.0),
              ),
              Positioned(
                top: 350.0,
                left: 170.0,
                child: Text(
                  widget.txt5,
                  style: kHeading5,
                ),
              ),
              Positioned(
                top: 390.0,
                left: 182.0,
                child: GradientText(null, widget.txt6, 20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
