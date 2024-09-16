import 'package:debaghy/presentaition/custom_widgets/bottun_custom.dart';
import 'package:debaghy/presentaition/custom_widgets/pininput_custom.dart';
import 'package:debaghy/presentaition/utils/color_manager.dart';
import 'package:debaghy/presentaition/utils/string_manager.dart';
import 'package:debaghy/presentaition/utils/style_manager.dart';
import 'package:debaghy/presentaition/utils/values_manager.dart';
import 'package:flutter/material.dart';

class VerificationWidgetCustom extends StatefulWidget {
  final String title;
  final String details;
  final String email;
  final TextEditingController controller;
  const VerificationWidgetCustom({
    super.key,
    required this.email,
    required this.controller,
    required this.title,
    required this.details,
  });

  @override
  State<VerificationWidgetCustom> createState() =>
      _VerificationWidgetCustomState();
}

class _VerificationWidgetCustomState extends State<VerificationWidgetCustom> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: AppPadding.p16),
            child: Text(
              widget.title,
              style: StyleManager.h1_Bold(color: ColorManager.firstColor),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppPadding.p16, vertical: AppPadding.p10),
          child: Text(
            widget.details,
            style: StyleManager.h4_Regular(color: ColorManager.primary5Color),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppPadding.p16, vertical: AppPadding.p10),
          child: Text(
            widget.email,
            style: StyleManager.h4_Regular(color: ColorManager.primary7Color),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: AppPadding.p16),
          child: PininputCustom(
            controller: widget.controller,
          ),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.p16, vertical: AppPadding.p10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  StringManager.dontreceviecode,
                  style: StyleManager.body01_Regular(
                      color: ColorManager.primary5Color),
                ),
                Text(
                  " ${StringManager.resent}",
                  style: StyleManager.body01_Semibold(
                      color: ColorManager.primary5Color),
                ),
              ],
            )),
        Expanded(
          child: Center(
            child: BottouCustom(
              text: StringManager.sentText,
              function: () {},
            ),
          ),
        )
      ],
    );
  }
}
