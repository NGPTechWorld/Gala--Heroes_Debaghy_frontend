import 'package:debaghy/presentaition/utils/assets_manager.dart';
import 'package:debaghy/presentaition/utils/color_manager.dart';
import 'package:debaghy/presentaition/utils/string_manager.dart';
import 'package:debaghy/presentaition/utils/style_manager.dart';
import 'package:debaghy/presentaition/utils/values_manager.dart';
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
