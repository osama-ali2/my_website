
import 'package:flutter/material.dart';

class TypingTextProvider extends ChangeNotifier{
  String displayedText = '';
  int currentIndex = 0;

  void increaseIndex(){
    currentIndex++;
  }
}