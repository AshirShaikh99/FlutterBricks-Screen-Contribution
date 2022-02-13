import 'package:brickscontribution/components/appbar_block1.dart';
import 'package:brickscontribution/components/appbar_block2.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xff474a5a), Color(0xff363946)]),
        ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          elevation: 4.0,
          actions: <Widget>[
            Row(
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
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[Color(0xff474a5a), Color(0xff363946)]),
            ),
          ),
        ),
      ),
    );
  }
}
