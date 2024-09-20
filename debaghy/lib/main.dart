import 'package:debaghy/app/app.dart';
import 'package:debaghy/app/core/binding/app_binding.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppBinding().dependencies();
  await AppBinding().initializes();
  runApp(const App());
}
