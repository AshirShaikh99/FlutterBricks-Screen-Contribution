import 'package:flutter/material.dart';
import 'appbar_block1.dart';
import 'appbar_block2.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: MediaQuery.of(context).size.height / 240,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: InkWell(
                onTap: () {
                  print("MediaQuery.of(context).size.height");
                },
                child: AppBarBlock1()),
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
