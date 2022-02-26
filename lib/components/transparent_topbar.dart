import 'package:flutter/material.dart';
import 'appbar_block1.dart';
import 'appbar_block2.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: AppBarBlock1(),
          ),
          Padding(
            padding: EdgeInsets.only(right: 6.0),
            child: AppBarBlock2(),
          ),
        ],
      ),
    );
  }
}
