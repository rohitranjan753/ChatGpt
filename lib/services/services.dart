import 'package:chatgptbot/constants/constant.dart';
import 'package:chatgptbot/widgets/drop_down.dart';
import 'package:chatgptbot/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class Services {
  static Future<void> showModalSheet({required BuildContext context}) async {
    await showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        backgroundColor: scaffoldBackgroundColor,
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Flexible(
                    child: TextWidget(
                  label: "Chosen Model: ",
                  fontSize: 16,
                )),
                Flexible(child: ModelsDropDownWidget(),flex: 2,)
              ],
            ),
          );
        });
  }
}
