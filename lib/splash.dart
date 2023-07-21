import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:love/pages/homepage.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    navigatetohome();
  }

  navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 3000), (() {}));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) {
      return MyHomePage();
    })));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Lottie.asset(
            'assets/splashanime.json',
            fit: BoxFit.cover,
          ),
        ],
      )),
    );
  }
}
