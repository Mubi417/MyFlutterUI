import 'package:flutter/material.dart';
import 'carousel_item.dart';

List featuredImages = [
  CarouselItem(
    imagePath: "assets/1.jpeg",
    imageText: "This is text News 1",
  ),
  CarouselItem(
    imagePath: "assets/2.jpeg",
    imageText: "This is text News 2",
  ),
  CarouselItem(
    imagePath: "assets/3.jpeg",
    imageText: "This is text News 3",
  ),
  CarouselItem(
    imagePath: "assets/4.jpeg",
    imageText: "This is text News 4",
  ),
];

List pageColors = [
  Colors.red,
  Colors.green,
  Colors.yellow,
  Colors.blue,
  Colors.redAccent,
  Colors.orange,
  Colors.teal,
  Colors.deepOrange,
  Colors.purple,
  Colors.indigo
];

List<String> pages = [
  "page0",
  "page1",
  "page2",
  "page3",
  "page4",
  "page5",
  "page6",
  "page7",
  "page8"
];

List latestPosts = [
  {"title": "Sample Post Title 0", "tag": "TAG", "image": "assets/1.jpeg"},
  {"title": "Sample Post Title 1", "tag": "TAG", "image": "assets/2.jpeg"},
  {"title": "Sample Post Title 2", "tag": "TAG", "image": "assets/3.jpeg"},
  {"title": "Sample Post Title 3", "tag": "TAG", "image": "assets/4.jpeg"},
];
