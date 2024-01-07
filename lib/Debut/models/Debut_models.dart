import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

List<StoryItem> storyItems = [
  StoryItem.text(
      title: "Bienvenue sur StudentBank",
      backgroundColor: Colors.red,
      textStyle: const TextStyle(
          color: (Colors.white),
          fontSize: 30,
          fontWeight: FontWeight.w600,
          fontFamily: "Roboto")),
  StoryItem.inlineProviderImage(const AssetImage("images/graduate.png"),
      caption: const Text(
        "Actualite",
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w600, fontSize: 25),
      )),
];
