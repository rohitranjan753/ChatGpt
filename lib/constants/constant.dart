import 'dart:ui';

import 'package:chatgptbot/widgets/text_widget.dart';
import 'package:flutter/material.dart';

Color scaffoldBackgroundColor = const Color(0xFF343541);
Color cardColor = const Color(0xFF444654);

List<String> models = [
  'Model1',
  'Model2',
  'Model3',
  'Model4',
  'Model5',
];

List<DropdownMenuItem<String>>? get getModelsItem {
  List<DropdownMenuItem<String>>? modelsItems =
      List<DropdownMenuItem<String>>.generate(
          models.length,
          (index) => DropdownMenuItem(
            value: models[index],
                  child: TextWidget(
                label: models[index],
                fontSize: 15,
              )));
  return modelsItems;
}

final chatMessages = [
  {
    "msg": "Hello",
    "chatIndex": 0,
  },
  {
    "msg":
        "Good fjsh fhs hdffhg dshfb hjfdshgf hsgfhs hhb\nfhsdgfdsgfgsnfgsj shgfshg ds g\nsdfhnjsnds",
    "chatIndex": 2,
  },
  {
    "msg": "Who",
    "chatIndex": 0,
  },
  {
    "msg":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    "chatIndex": 1,
  },
  {
    "msg": "Why",
    "chatIndex": 0,
  },
  {
    "msg": "Normal",
    "chatIndex": 1,
  }
];
