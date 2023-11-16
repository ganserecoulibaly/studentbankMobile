import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
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

final storyController = StoryController();

StoryItem storyItem1 = StoryItem.pageVideo(
    'https://player.vimeo.com/external/491866264.hd.mp4?s=401b434a05ff4129d5d4199830f9999e02350a8b&profile_id=174&oauth2_token_id=57447761',
    controller: storyController

);

 StoryItem storyItem2 = StoryItem.pageImage(
   url: 'https://images.pexels.com/photos/3186386/pexels-photo-3186386.jpeg?auto=compress&cs=tinysrgb&w=600',
     controller: storyController,
);

final StoryItem storyItem3= StoryItem.text(
  title: "modèle de données pour représenter\n les éléments de l'histoire!...",
  backgroundColor: Colors.greenAccent,
  textStyle: const TextStyle(
    fontFamily: 'Dancing',
    fontSize: 40,
  ),
);

StoryItem storyItem4 = StoryItem.pageVideo(
    'https://player.vimeo.com/external/561280715.sd.mp4?s=4e437fa40d065ddf48660d50fa71ee8d03115901&profile_id=165&oauth2_token_id=57447761',
    controller: storyController

);

StoryItem storyItem5 = StoryItem.pageImage(
  url: 'https://images.pexels.com/photos/4881650/pexels-photo-4881650.jpeg?auto=compress&cs=tinysrgb&w=600',
  controller: storyController,
);