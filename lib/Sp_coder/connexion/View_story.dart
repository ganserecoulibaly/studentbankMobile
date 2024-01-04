import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';
import 'package:studentbankmobile/Sp_coder/connexion/page_intro2.dart';

import '../models/story_model.dart';
import 'home_intro.dart';

class ViewStory extends StatefulWidget {
  const ViewStory({Key? key}) : super(key: key);

  @override
  State<ViewStory> createState() => _ViewStoryState();
}

class _ViewStoryState extends State<ViewStory> {
  final storyController = StoryController();

  bool showSkipButton = false;

  @override
  void initState() {
    super.initState();
    // Délai de 3 secondes pour afficher le bouton "Suivant"
    Future.delayed(const Duration(seconds: 4), () {
      if (mounted) {
        setState(() {
          showSkipButton = true;
        });
      }
    });
  }

  @override
  void dispose() {
    storyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    List<StoryItem> storyItems = [
      storyItem1,
      storyItem2,
      storyItem3,
      storyItem4,
      storyItem5,
    ];
    return Scaffold(
backgroundColor: Colors.white,
      body: Stack(
        children: [
          StoryView(
              storyItems: storyItems,
              onStoryShow: (s) {},
              progressPosition: ProgressPosition.top,
              repeat: true,
              controller: storyController,
              onComplete: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                      return HomeIntro();
                    }));
              },
              onVerticalSwipeComplete: (direction) {
                if (direction == Direction.down) {
                  Navigator.pop(context);
                }
              }
          ),

          if (showSkipButton)
            Positioned(
              right: 16,
              bottom: MediaQuery.of(context).size.height / 2,
              child:  InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                        return HomeIntro();
                      }));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Colors.transparent
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Ignorer",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Icon(
                        Icons.skip_next,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              )
            ),
        ],
      )
    );
  }
}