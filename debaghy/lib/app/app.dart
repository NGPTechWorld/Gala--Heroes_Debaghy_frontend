import 'package:debaghy/app/config/theme_manager.dart';
import 'package:debaghy/app/config/values_manager.dart';
import 'package:debaghy/presentaition/pages/start_page/start_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class App extends StatelessWidget {
  const App({super.key});

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
