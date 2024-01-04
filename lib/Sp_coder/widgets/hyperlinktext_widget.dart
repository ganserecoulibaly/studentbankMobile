import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HyperlinkText extends StatelessWidget {
  final String firstText;
  final String linkText;
  final String secondText;
  final VoidCallback onLinkTap;

  HyperlinkText({
    required this.firstText,
    required this.linkText,
    required this.secondText,
    required this.onLinkTap,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: firstText,
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
              decoration: TextDecoration.none,
            ),
          ),
          TextSpan(
            text: linkText,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 10,
              decoration: TextDecoration.none,
            ),
            recognizer: TapGestureRecognizer()..onTap = onLinkTap,
          ),
          TextSpan(
            text: secondText,
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }
}



