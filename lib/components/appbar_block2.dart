import 'package:flutter/material.dart';

class AppBarBlock2 extends StatelessWidget {
  const AppBarBlock2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38.0,
      width: 37.0,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff363946), Color(0xff474a5a), Color(0xff363946)],
        ),
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
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
