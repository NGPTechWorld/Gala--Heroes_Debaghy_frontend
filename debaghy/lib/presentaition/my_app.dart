import 'package:debaghy/presentaition/pages/start_page/start_page.dart';
import 'package:debaghy/presentaition/utils/theme_manager.dart';
import 'package:debaghy/presentaition/utils/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppSizeScreen.screenSize = MediaQuery.of(context).size;
    AppSizeScreen.screenHeight = MediaQuery.of(context).size.height;
    AppSizeScreen.screenWidth = MediaQuery.of(context).size.width;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const StartPage(),
      theme: ThemeManager.appTheme,
    );
  }
}
