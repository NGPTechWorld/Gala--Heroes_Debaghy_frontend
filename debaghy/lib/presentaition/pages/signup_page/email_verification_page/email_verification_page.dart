import 'package:debaghy/presentaition/custom_widgets/app_icon_wigdet.dart';
import 'package:debaghy/presentaition/custom_widgets/verification_widget_custom.dart';
import 'package:debaghy/presentaition/utils/color_manager.dart';
import 'package:debaghy/presentaition/utils/string_manager.dart';
import 'package:debaghy/presentaition/utils/values_manager.dart';
import 'package:flutter/material.dart';

class EmailVerificationPage extends StatefulWidget {
  final String email;
  const EmailVerificationPage({super.key, required this.email});

  @override
  State<EmailVerificationPage> createState() => _EmailVerificationPageState();
}

class _EmailVerificationPageState extends State<EmailVerificationPage> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.firstColor,
      body: Stack(
        children: [
          SizedBox(
            height: AppSizeScreen.screenHeight * 0.40,
            child: const Center(child: AppIconWigdet()),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                width: AppSizeScreen.screenWidth,
                height: AppSizeScreen.screenHeight * 0.60,
                constraints:
                    BoxConstraints(maxWidth: AppSizeScreen.screenWidth),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppSize.s40),
                        topRight: Radius.circular(AppSize.s40)),
                    color: ColorManager.whiteColor),
                child: VerificationWidgetCustom(
                    email: widget.email,
                    controller: controller,
                    title: StringManager.emailVerification,
                    details: StringManager.emailVerificationDetails)),
          ),
        ],
      ),
    );
  }
}
