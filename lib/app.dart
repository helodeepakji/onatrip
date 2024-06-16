import 'package:flutter/material.dart';
import 'package:untitled1/features/auth_page/presentation/screens/signup_page.dart';
import 'common/themes/button_theme.dart';
import 'common/helper/http_services.dart';
import 'common/helper/token_manager.dart';
import 'common/themes/text_button_theme.dart';
import 'common/themes/input_decoration_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class App extends StatefulWidget {
  const App({
    super.key,
    required this.sharedPreferences,
  });

  final SharedPreferences sharedPreferences;

  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    final HttpService httpService = HttpService();
    final TokenManager tokenManager = TokenManager(sharedPreferences: widget.sharedPreferences);

    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          theme: ThemeData(
            useMaterial3: false,
            scaffoldBackgroundColor: Colors.white,
            textButtonTheme: CustomTextButtonThemeData.lightThemeData,
            iconButtonTheme: CustomIconButtonThemeData.lightThemeData,
            inputDecorationTheme: InputDecorationThemeData.lightThemeData,
            outlinedButtonTheme: CustomOutlineButtonThemeData.lightThemeData,
            elevatedButtonTheme: CustomElevatedButtonThemeData.lightThemeData,
          ),
          debugShowCheckedModeBanner: false,
          home: const SignupPage(),
        );
      },
      // child: MaterialApp(
      //   theme: ThemeData(
      //     useMaterial3: false,
      //     scaffoldBackgroundColor: const Color(0xffF6F7FF),
      //     textButtonTheme: CustomTextButtonThemeData.lightThemeData,
      //     iconButtonTheme: CustomIconButtonThemeData.lightThemeData,
      //     inputDecorationTheme: InputDecorationThemeData.lightThemeData,
      //     outlinedButtonTheme: CustomOutlineButtonThemeData.lightThemeData,
      //     elevatedButtonTheme: CustomElevatedButtonThemeData.lightThemeData,
      //   ),
      //   debugShowCheckedModeBanner: false,
      //   home: LoginPage(),
      // ),
    );
  }
}
