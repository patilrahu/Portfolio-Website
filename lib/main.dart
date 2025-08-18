import 'package:animated_mouse_cursor/animated_mouse_cursor.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:portfolio_website/core/constant/app_color.dart';
import 'package:portfolio_website/core/helper/responsive.dart';
import 'package:portfolio_website/feature/home/home.dart';
import 'package:portfolio_website/feature/splash/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Key parallaxOne = GlobalKey();
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all(AppColor.greyColor),
        ),
        scaffoldBackgroundColor: AppColor.primaryColor,
        fontFamily: GoogleFonts.nunitoSans().fontFamily,
      ),
      home: !ResponsiveHelper.isMobile(context)
          ? AnimatedMouseCursor(child: Splash())
          : Splash(),
    );
  }
}
