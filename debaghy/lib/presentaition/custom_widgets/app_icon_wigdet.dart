import 'package:debaghy/app/config/assets_manager.dart';
import 'package:debaghy/app/config/color_manager.dart';
import 'package:debaghy/app/config/string_manager.dart';
import 'package:debaghy/app/config/style_manager.dart';
import 'package:debaghy/app/config/values_manager.dart';
import 'package:flutter/material.dart';

class AppIconWigdet extends StatelessWidget {
  const AppIconWigdet({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(AppPadding.p4),
          child: Text(
            StringManager.titleApp,
            style: StyleManager.h1_Bold(color: ColorManager.whiteColor),
          ),
        ),
        Image.asset(
          AssetsManager.iconeAppImage,
          width: AppSizeScreen.screenWidth * 0.4,
          height: AppSizeScreen.screenHeight * 0.3,
        ),
      ],
    );
  }
}
