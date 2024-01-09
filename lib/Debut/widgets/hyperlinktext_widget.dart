import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HyperlinkText extends StatelessWidget {
  final String firstText;
  final String linkText;
  final String secondText;
  final VoidCallback onLinkTap;

  const HyperlinkText({super.key, 
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
            style: const TextStyle(
              color: Colors.white,
              fontSize: 10,
              decoration: TextDecoration.none,
            ),
          ),
          TextSpan(
            text: linkText,
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 10,
              decoration: TextDecoration.none,
            ),
            recognizer: TapGestureRecognizer()..onTap = onLinkTap,
          ),
          TextSpan(
            text: secondText,
            style: const TextStyle(
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



