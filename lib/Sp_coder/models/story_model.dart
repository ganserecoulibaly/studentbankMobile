import 'package:flutter/material.dart';
import 'package:story_view/widgets/story_view.dart';

// class StoryItemModel {
//   final String? title;
//   final Color? backgroundColor;
//   final TextStyle? textStyle;
//   final String? imageUrl;
//   final String? caption;
//   final StoryController? controller;
//
//   StoryItemModel({
//     this.title,
//     this.backgroundColor,
//     this.textStyle,
//     this.imageUrl,
//     this.caption,
//     this.controller,
//   });
// }


StoryItem storyItem1 = StoryItem.text(
  title: "bonjour le monde",
  backgroundColor: Colors.pinkAccent,
);

 StoryItem storyItem2 = StoryItem.text(
  title: "Nice!\n\nContinuez de cette manière pour.",
  backgroundColor: Colors.white54,
  textStyle: const TextStyle(
    fontFamily: 'Dancing',
    fontSize: 40,)
);

final StoryItem storyItem3= StoryItem.text(
  title: "oici un modèle de données pour représenter\n les éléments de l'histoire!\n\nTap to.",
  backgroundColor: Colors.greenAccent,
  textStyle: const TextStyle(
    fontFamily: 'Dancing',
    fontSize: 40,
  ),
);

final StoryItem storyItem4= StoryItem.text(
  title: " éléments de l'histoire.!\n\nTap to continue.",
  backgroundColor: Colors.orange,
  textStyle: const TextStyle(
    fontFamily: 'Dancing',
    fontSize: 40,
  ),
);

final StoryItem storyItem5 = StoryItem.text(
  title: " transmettant la même instance de contrôleur.",
  backgroundColor: Colors.green,
  textStyle: const TextStyle(
    fontFamily: 'Dancing',
    fontSize: 40,
  ),
);