import 'package:debaghy/app/config/color_manager.dart';
import 'package:debaghy/app/config/style_manager.dart';
import 'package:debaghy/app/config/values_manager.dart';
import 'package:flutter/material.dart';

class BottouCustom extends StatelessWidget {
  final Function function;
  final String text;
  const BottouCustom({super.key, required this.function, required this.text});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () => function(),
        child: Container(
          height: AppSizeScreen.screenHeight * 0.07,
          width: AppSizeScreen.screenWidth / 2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: ColorManager.firstColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
              text,
              style: StyleManager.h3_Bold(color: ColorManager.whiteColor),
            )),
          ),
        ));
  }
}
