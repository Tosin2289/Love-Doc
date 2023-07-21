import 'package:flutter/material.dart';
import 'dart:math';

import 'package:lottie/lottie.dart';

class Result extends StatefulWidget {
  final fname;
  final sname;
  final percent;
  const Result(
      {Key? key,
      required this.fname,
      required this.sname,
      required this.percent})
      : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  final number = Random().nextInt(101);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            widget.percent >= 50
                ? Lottie.asset('assets/heart.json')
                : Lottie.asset('assets/heartbreaker.json'),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.fname,
                  style: const TextStyle(
                      fontSize: 30,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  " & ",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.sname,
                  style: const TextStyle(
                      fontSize: 30,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '${widget.percent}%',
              style: const TextStyle(
                fontSize: 55,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      )),
    );
  }
}
