import 'package:debaghy/presentaition/custom_widgets/app_icon_wigdet.dart';
import 'package:debaghy/presentaition/utils/color_manager.dart';
import 'package:debaghy/presentaition/utils/values_manager.dart';
import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.firstColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const AppIconWigdet(),
          SizedBox(
            height: AppSizeScreen.screenHeight * 0.1,
          ),
          const CircularProgressIndicator(
            color: ColorManager.whiteColor,
          ),
        ],
      ),
    );
  }
}
