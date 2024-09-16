import 'package:debaghy/presentaition/utils/color_manager.dart';
import 'package:debaghy/presentaition/utils/style_manager.dart';
import 'package:debaghy/presentaition/utils/values_manager.dart';
import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  const TextFieldCustom(
      {super.key, required this.title, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: StyleManager.h4_Regular(color: ColorManager.primary5Color),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: AppPadding.p8, bottom: AppPadding.p16),
            child: TextFormField(
              controller: controller,
              decoration: const InputDecoration(
                filled: true,
                fillColor: ColorManager.primary2Color,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(AppSize.s10)),
                  borderSide: BorderSide.none,
                ),
                hintTextDirection: TextDirection.rtl,
              ),
            ),
          )
        ],
      ),
    );
  }
}
