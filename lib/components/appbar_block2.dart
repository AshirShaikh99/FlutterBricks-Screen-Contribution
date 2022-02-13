import 'package:flutter/material.dart';

class AppBarBlock2 extends StatelessWidget {
  const AppBarBlock2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.0,
      width: 44.0,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff474a5a), Color(0xff363946)],
        ),
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
      child: Image(
        image: AssetImage("assets/icons/group.png"),
      ),
    );
  }
}
