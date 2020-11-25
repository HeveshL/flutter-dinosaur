import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_dinosaur/game-object.dart';
import 'package:flutter_dinosaur/sprite.dart';

Sprite dino = Sprite()
  ..imagePath = "assets/images/dino/dino_1.png"
  ..imageWidth = 88
  ..imageHeight = 94;

class Dino extends GameObject {
  @override
  Widget render() {
    return Image.asset(dino.imagePath);
  }

  @override
  Rect getRect(Size screenSize, double runDistance) {
    return Rect.fromLTWH(screenSize.width / 10, screenSize.height / 2 - dino.imageHeight,
        dino.imageWidth.toDouble(), dino.imageHeight.toDouble());
  }
}
