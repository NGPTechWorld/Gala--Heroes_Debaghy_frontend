import 'package:debaghy/app/config/color_manager.dart';
import 'package:debaghy/app/config/string_manager.dart';
import 'package:debaghy/app/config/style_manager.dart';
import 'package:debaghy/app/config/values_manager.dart';
import 'package:debaghy/presentaition/custom_widgets/app_icon_wigdet.dart';
import 'package:debaghy/presentaition/custom_widgets/bottun_custom.dart';
import 'package:debaghy/presentaition/custom_widgets/text_field_custom.dart';
import 'package:debaghy/presentaition/pages/email_verification_page/email_verification_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: AppPadding.p16),
                      child: Text(
                        StringManager.signup,
                        style: StyleManager.h1_Bold(
                            color: ColorManager.firstColor),
                      ),
                    ),
                  ),
                  TextFieldCustom(
                    title: StringManager.name,
                    controller: nameController,
                  ),
                  TextFieldCustom(
                    title: StringManager.email,
                    controller: emailController,
                  ),
                  TextFieldCustom(
                    title: StringManager.password,
                    controller: passwordController,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppPadding.p16, vertical: AppPadding.p10),
                    child: Row(
                      children: [
                        Text(
                          StringManager.alreadyHaveAccount,
                          style: StyleManager.body01_Regular(
                              color: ColorManager.primary5Color),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppPadding.p10),
                          child: Text(
                            StringManager.login,
                            style: StyleManager.body01_Semibold(
                                color: ColorManager.firstColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: BottouCustom(
                        text: StringManager.signup,
                        function: () {
                          Get.off(() => EmailVerificationPage(
                                email: emailController.text,
                              ));
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
