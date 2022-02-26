import 'package:brickscontribution/components/appbar_block1.dart';
import 'package:brickscontribution/components/appbar_block2.dart';
import 'package:brickscontribution/components/carousel.dart';
import 'package:brickscontribution/components/details_block.dart';
import 'package:brickscontribution/components/transparent_topbar.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/bottom_navigation.dart';

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
          colors: [
            Color(0xff474a5a),
            Color(0xff1C1E25),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // extendBodyBehindAppBar: true,
        // appBar: AppBar(
        //   // backgroundColor: Colors.transparent,
        //   automaticallyImplyLeading: true,
        //   elevation: 0,
        //   actions: <Widget>[
        //     Row(
        //       children: const [
        //         Padding(
        //           padding: EdgeInsets.only(right: 10.0),
        //           child: AppBarBlock1(),
        //         ),
        //         Padding(
        //           padding: EdgeInsets.only(right: 6.0),
        //           child: AppBarBlock2(),
        //         ),
        //       ],
        //     ),
        //   ],
        //   flexibleSpace: Container(
        //     decoration: const BoxDecoration(
        //       gradient: LinearGradient(
        //           begin: Alignment.topCenter,
        //           end: Alignment.bottomCenter,
        //           colors: <Color>[Color(0xff474a5a), Color(0xff363946)]),
        //     ),
        //   ),
        // ),
        body: Column(
          children: const [
            TopBar(),
            Padding(
              padding: EdgeInsets.only(
                top: 40.0,
                right: 120.0,
              ),
              child: Text(
                "Your Collectives",
                style: kHeading1,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 172.0),
              child: Text(
                "Represent and Earn",
                style: kHeading2,
              ),
            ),
            Expanded(child: Carousel()),
          ],
        ),
        extendBody: true,
        bottomNavigationBar: const BottomNavBarCurvedFb1(),
      ),
    );
  }
}
