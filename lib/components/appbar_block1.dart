import 'package:flutter/material.dart';
import '../utils/gradient_text.dart';

class AppBarBlock1 extends StatelessWidget {
  const AppBarBlock1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110.0,
      decoration: BoxDecoration(
        color: const Color(0xff474a5a),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GradientText(key, "5.99", 20.0),
          const Image(
              image: AssetImage("assets/icons/solana.png"), height: 50.0),
        ],
      ),
    );
  }
}
