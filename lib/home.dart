// ignore: file_names
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          top: -80,
          width: size.width,
          child: Center(
            child: Lottie.asset(
              "assets/animations/spider-bat.json",
              height: 400,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          width: size.width,
          child: Lottie.asset(
            "assets/animations/house.json",
          ),
        ),
        Positioned(
          top: size.height / 4.7,
          width: size.width,
          child: FadeInUp(
            child: ZoomIn(
              child: Lottie.asset(
                "assets/animations/happy-halloween.json",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
