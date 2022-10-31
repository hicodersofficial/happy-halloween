import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:halloween/Splash.dart';

void main() {
  runApp(const Halloween());
}

class Halloween extends StatelessWidget {
  const Halloween({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return const MaterialApp(
      home: Scaffold(
        body: Splash(),
      ),
    );
  }
}
