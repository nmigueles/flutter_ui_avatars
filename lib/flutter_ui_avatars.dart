library flutter_ui_avatars;

import 'package:flutter/material.dart';
import 'dart:ui';

class UIAvatar {
  Image getAvatar({
    required String name,
    int size = 100,
    bool rounded = true,
    bool bold = false,
    Color color = const Color(0xff000000),
    Color background = const Color(0xfff0e9e9),
  }) {
    name = Uri.encodeComponent(name);
    var encodedColor =
        Uri.encodeComponent(color.value.toRadixString(16).substring(2));
    var encodedBackground =
        Uri.encodeComponent(background.value.toRadixString(16).substring(2));

    return Image.network(
        "https://ui-avatars.com/api/?name=$name&rounded=$rounded&bold=$bold&color=$encodedColor&background=$encodedBackground&size=$size");
  }
}
