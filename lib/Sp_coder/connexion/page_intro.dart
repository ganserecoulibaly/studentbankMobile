import 'package:flutter/material.dart';
import 'package:studentbankmobile/Sp_coder/connexion/page_intro1.dart';
import 'package:studentbankmobile/Sp_coder/connexion/page_intro2.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'View_story.dart';


class PageIntro extends StatefulWidget {
  const PageIntro({Key? key}) : super(key: key);

  @override
  State<PageIntro> createState() => _PageIntroState();
}

class _PageIntroState extends State<PageIntro> {
  final PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 1);
              });
            },
            children: const [
              PageIntro1(),
              PageIntro2(),
            ],
          ),

          // Indicateur de pages
          Container(
            alignment: const Alignment(0, 0.50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                onLastPage
                    ? GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                          return ViewStory();
                        }));

                  },
                  child: const Text(
                    "Continuer",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
                    : GestureDetector(
                  onTap: () {
                    _controller.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.linear,
                    );
                  },
                  child: Text(
                    "Suivant",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),


                SizedBox(
                  height: 10.0,
                ),

                SmoothPageIndicator(controller: _controller, count: 2,),

              ],
            ),
          )
        ],
      ),
    );
  }
}
