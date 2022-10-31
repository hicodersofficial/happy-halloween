// ignore: file_names
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:halloween/Home.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  late AnimationController _controller;
  bool _isShowingSplash = true;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
    );
    _controller.addListener(() {
      if (_controller.isCompleted) {
        setState(() {
          _isShowingSplash = false;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (!_isShowingSplash) {
      return const SafeArea(
        child: Home(),
      );
    }
    return SafeArea(
      child: Scaffold(
        // backgroundColor: const Color(0xff25272b),
        body: Stack(
          children: [
            Positioned(
              top: -100,
              left: -100,
              width: size.width,
              child: Lottie.asset("assets/animations/spider.json"),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset(
                  "assets/animations/pumpkin.json",
                  repeat: false,
                  controller: _controller,
                  onLoaded: (composition) {
                    _controller.duration = composition.duration +
                        const Duration(milliseconds: 500);
                    _controller.forward();
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                FadeInUp(
                  delay: const Duration(milliseconds: 500),
                  child: const Center(
                    child: Text(
                      "@hi.coders",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
