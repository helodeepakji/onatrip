import 'package:untitled1/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  final widgetBinding = WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(widgetsBinding: widgetBinding);

  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  await ScreenUtil.ensureScreenSize();

  FlutterNativeSplash.remove();

  runApp(
    App(sharedPreferences: sharedPreferences),
  );
}
