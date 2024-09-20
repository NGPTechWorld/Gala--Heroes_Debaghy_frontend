import 'package:debaghy/app/config/color_manager.dart';
import 'package:debaghy/app/config/string_manager.dart';
import 'package:debaghy/app/config/style_manager.dart';
import 'package:debaghy/app/config/values_manager.dart';
import 'package:debaghy/presentaition/custom_widgets/bottun_custom.dart';
import 'package:debaghy/presentaition/custom_widgets/text_field_custom.dart';
import 'package:debaghy/presentaition/pages/email_verification_page/email_verification_page.dart';
import 'package:debaghy/presentaition/pages/signup_page/signup_page_logic/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TitleSignUpPage extends StatelessWidget {
  const TitleSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppPadding.p16),
        child: Text(
          StringManager.signup,
          style: StyleManager.h1_Bold(color: ColorManager.firstColor),
        ),
      ),
    );
  }
}

class InputSignUpPage extends GetView<SignupController> {
  const InputSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldCustom(
          title: StringManager.name,
          controller: controller.nameController,
        ),
        TextFieldCustom(
          title: StringManager.email,
          controller: controller.emailController,
        ),
        TextFieldCustom(
          title: StringManager.password,
          controller: controller.passwordController,
        ),
      ],
    );
  }
}

class AlreadyHaveAccontSignUp extends StatelessWidget {
  const AlreadyHaveAccontSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p16, vertical: AppPadding.p10),
      child: Row(
        children: [
          Text(
            StringManager.alreadyHaveAccount,
            style:
                StyleManager.body01_Regular(color: ColorManager.primary5Color),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p10),
            child: Text(
              StringManager.login,
              style:
                  StyleManager.body01_Semibold(color: ColorManager.firstColor),
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonSignUpPage extends GetView<SignupController> {
  const ButtonSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: BottouCustom(
          text: StringManager.signup,
          function: () {
            Get.off(() => EmailVerificationPage(
                  email: controller.emailController.text,
                ));
          },
        ),
      ),
    );
  }
}
