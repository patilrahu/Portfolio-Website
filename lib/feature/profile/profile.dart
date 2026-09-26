import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/core/constant/app_color.dart';
import 'package:portfolio_website/core/constant/app_constant.dart';
import 'package:portfolio_website/core/constant/app_image.dart';
import 'package:portfolio_website/core/helper/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: isMobile
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImage.appBanner),
                SizedBox(height: 40),
                _buildTextSection(),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: _buildTextSection()),
                Image.asset(AppImage.appBanner, height: 496),
              ],
            ),
    );
  }
}

Widget _buildTextSection() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      RichText(
        text: TextSpan(
          style: TextStyle(
            fontSize: 32,
            color: AppColor.blackColor,
            fontFamily: GoogleFonts.nunitoSans().fontFamily,
          ),
          children: [
            TextSpan(
              text: "Hello,  I' m ".toUpperCase(),
              style: TextStyle(fontSize: 16),
            ),
            TextSpan(
              text: " Rahul  Patil.  A -".toUpperCase(),
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
      const SizedBox(height: 5),
      SizedBox(
        height: 35,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Developer Who ", style: TextStyle(fontSize: 25)),
            AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                BounceAnimatedText(
                  duration: const Duration(milliseconds: 500),
                  "Ships",
                  textStyle: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                BounceAnimatedText(
                  "Codes",
                  duration: const Duration(milliseconds: 500),
                  textStyle: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                BounceAnimatedText(
                  "Solves",
                  duration: const Duration(milliseconds: 500),
                  textStyle: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                BounceAnimatedText(
                  "Builds",
                  duration: const Duration(milliseconds: 500),
                  textStyle: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      SizedBox(height: 15),
      Text(
        "Senior Mobile Application Developer with 4+ years of experience building scalable and high-performance mobile applications using Flutter and iOS (Swift). Experienced in developing production-ready applications with REST APIs, Firebase, state management, and clean architecture, with a focus on reliable and user-friendly mobile experiences.",
        style: TextStyle(
          color: AppColor.greyColor,
          fontSize: 13,
          fontWeight: FontWeight.w600,
        ),
      ),
    ],
  );
}
