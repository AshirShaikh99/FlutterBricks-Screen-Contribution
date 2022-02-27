import 'package:flutter/material.dart';

class AppBarBlock2 extends StatelessWidget {
  const AppBarBlock2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32.0),
        border: Border.all(color: const Color(0xff474a5a), width: 5.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 10,
            blurRadius: 5,
            offset: const Offset(0, 10), // changes position of shadow
          ),
        ],
      ),
      child: const Image(
        image: AssetImage("assets/icons/group.png"),
        height: 30.0,
      ),
    );
  }
}
