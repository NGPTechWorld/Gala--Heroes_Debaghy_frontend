import 'package:debaghy/app/config/color_manager.dart';
import 'package:debaghy/app/config/values_manager.dart';
import 'package:debaghy/presentaition/custom_widgets/app_icon_wigdet.dart';
import 'package:debaghy/presentaition/pages/signup_page/signup_page_widgets/signup_page_widgets.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.firstColor,
      body: Stack(
        children: [
          SizedBox(
            height: AppSizeScreen.screenHeight * 0.25,
            child: const Center(child: AppIconWigdet()),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: AppSizeScreen.screenWidth,
              height: AppSizeScreen.screenHeight * 0.75,
              constraints: BoxConstraints(maxWidth: AppSizeScreen.screenWidth),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppSize.s40),
                      topRight: Radius.circular(AppSize.s40)),
                  color: ColorManager.whiteColor),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleSignUpPage(),
                  InputSignUpPage(),
                  AlreadyHaveAccontSignUp(),
                  ButtonSignUpPage(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
