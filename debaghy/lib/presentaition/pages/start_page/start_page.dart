import 'package:debaghy/app/config/color_manager.dart';
import 'package:debaghy/app/config/values_manager.dart';
import 'package:debaghy/presentaition/custom_widgets/app_icon_wigdet.dart';
import 'package:debaghy/presentaition/pages/signup_page/signup_page.dart';
import 'package:debaghy/presentaition/pages/signup_page/signup_page_logic/signup_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAll(() => const SignupPage(), binding: SignupBinding());
    });
  }

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
