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
            TextSpan(text: "Hello I'm "),
            TextSpan(
              text: "Rahul Patil.",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: "\nMobile Application ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: "Developer",
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
            TextSpan(text: "\nBased In "),
            TextSpan(
              text: "India.",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      SizedBox(height: 20),
      Text(
        "Mobile Developer with 3+ years' experience building cross-platform apps using Flutter, Swift (iOS), and React Native. Published multiple apps on Play Store and App Store. Skilled in CI/CD, Firebase, and ERPNext integration. Passionate about clean UI/UX and scalable mobile architecture.",
        style: TextStyle(
          color: AppColor.greyColor,
          fontSize: 13,
          fontWeight: FontWeight.w600,
        ),
      ),
    ],
  );
}
