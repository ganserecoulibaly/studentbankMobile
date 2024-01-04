import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageIntro1 extends StatefulWidget {
  const PageIntro1({Key? key}) : super(key: key);

  @override
  State<PageIntro1> createState() => _PageIntro1State();
}

class _PageIntro1State extends State<PageIntro1> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'images/background-removebg-preview.png',
          width:double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,),
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/StudentBank - Logotype - Version quadrichrome dégradé-01 2.png'),
              Image.asset('images/iPhone 12 Pro.png'),

            ],
          ),
        ),
      ],
    );
  }
}
