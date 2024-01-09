import 'dart:async';

import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:studentbankmobile/banque/dark/option4.dart';

class option3 extends StatefulWidget {
  const option3({super.key});

  @override
  State<option3> createState() => _option3State();
}

class _option3State extends State<option3> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const option4()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/filter_banque_black.png"),
              fit: BoxFit.cover)),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 20),
          child: Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.arrow_back_sharp,
                    color: Colors.white,
                  )),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: StepProgressIndicator(
            size: 10,
            totalSteps: 5,
            currentStep: 4,
            selectedColor: Colors.white,
            unselectedColor: Colors.white54,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Padding(
            padding: EdgeInsets.only(
                left: 10.0, right: 10, bottom: 10, top: 20),
            child: SizedBox(
              width: 259,
              height: 91,
              child: Text(
                'Soyez patient ! \nVotre demande est en cours de traitement.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            )),
        const SizedBox(
          height: 30,
        ),
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.white),
              borderRadius: BorderRadius.circular(100)),
          child: Center(
            child: FadingText(
              "Loading",
              style: const TextStyle(color: Colors.white),
            ),
          ),
        )
      ]),
    ));
  }
}
