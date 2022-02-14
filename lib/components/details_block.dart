import 'package:flutter/material.dart';

class DetailsBlock extends StatefulWidget {
  const DetailsBlock({Key? key}) : super(key: key);

  @override
  _DetailsBlockState createState() => _DetailsBlockState();
}

class _DetailsBlockState extends State<DetailsBlock> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      width: 250.0,
      decoration: BoxDecoration(
        color: const Color(0xff3D404E),
        borderRadius: BorderRadius.circular(30.0),
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
        children: const [
          Positioned(
            top: 20.0,
            left: 15.0,
            child: Image(
              width: 220.0,
              image: AssetImage("assets/images/slide_img.png"),
            ),
          ),
        ],
      ),
    );
  }
}
