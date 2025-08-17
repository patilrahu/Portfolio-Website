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
    // Stack(
    //   alignment: Alignment.center,
    //   children: [
    //     Positioned(
    //       right: 0,
    //       child: Image.asset(AppImage.plant_right_image, height: 225),
    //     ),

    //     Column(
    //       children: [
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             Padding(
    //               padding: const EdgeInsets.only(left: 20),
    //               child: Column(
    //                 spacing: 30,
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: [
    //                   GestureDetector(
    //                     onTap: () {
    //                       final String resumeURL =
    //                           'https://drive.google.com/file/d/1ru2QCXBdy7qh2kSLi0tq8kK1SD9-SYfd/view?usp=share_link';

    //                       _launchURL(resumeURL);
    //                     },
    //                     child: Image.asset(
    //                       AppImage.resume_icon,
    //                       height: 35,
    //                       width: 35,
    //                     ),
    //                   ),
    //                   GestureDetector(
    //                     onTap: () {
    //                       const String phoneNumber = '+918291073112';
    //                       final String whatsappUrl =
    //                           'https://wa.me/${phoneNumber.replaceAll('+', '')}';

    //                       _launchURL(whatsappUrl);
    //                     },
    //                     child: Image.asset(
    //                       AppImage.whatsapp_icon,
    //                       height: 35,
    //                       width: 35,
    //                     ),
    //                   ),
    //                   GestureDetector(
    //                     onTap: () {
    //                       _launchURL(AppConstant.emailURL);
    //                     },
    //                     child: Image.asset(
    //                       AppImage.email_image,
    //                       height: 35,
    //                       width: 35,
    //                     ),
    //                   ),
    //                   GestureDetector(
    //                     onTap: () {
    //                       _launchURL(AppConstant.linkdeinURL);
    //                     },
    //                     child: Image.asset(
    //                       AppImage.linkdein_image,
    //                       height: 35,
    //                       width: 35,
    //                     ),
    //                   ),

    //                   GestureDetector(
    //                     onTap: () {
    //                       _launchURL(AppConstant.gitHubURL);
    //                     },
    //                     child: Image.asset(
    //                       AppImage.github_image,
    //                       height: 35,
    //                       width: 35,
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //             Expanded(
    //               child: Stack(
    //                 alignment: Alignment.center,
    //                 children: [
    //                   Align(
    //                     alignment: Alignment.center,
    //                     child: Image.asset(
    //                       AppImage.circle_image,
    //                       height: 200,
    //                       width: 200,
    //                     ),
    //                   ),
    //                   Column(
    //                     spacing: 10,
    //                     mainAxisSize: MainAxisSize.min,
    //                     mainAxisAlignment: MainAxisAlignment.center,
    //                     crossAxisAlignment: CrossAxisAlignment.center,
    //                     children: [
    //                       Text(
    //                         'hello samurai',
    //                         style: TextStyle(
    //                           color: AppColor.blackColor,
    //                           fontSize: 38,
    //                           fontWeight: FontWeight.w600,
    //                         ),
    //                       ),
    //                       Text(
    //                         'i am RAHUL PATiL',
    //                         style: TextStyle(
    //                           color: AppColor.blackColor,
    //                           fontSize: 22,
    //                           fontWeight: FontWeight.w600,
    //                         ),
    //                       ),
    //                       Padding(
    //                         padding: const EdgeInsets.symmetric(
    //                           horizontal: 100,
    //                         ),
    //                         child: Text(
    //                           "Mobile Developer with 3+ years' experience building cross-platform apps using Flutter, Swift (iOS), and React Native. Published multiple apps on Play Store and App Store. Skilled in CI/CD, Firebase, and ERPNext integration. Passionate about clean UI/UX and scalable mobile architecture.",
    //                           textAlign: TextAlign.center,
    //                           style: TextStyle(
    //                             color: AppColor.blackColor,
    //                             fontSize: 16,
    //                             fontWeight: FontWeight.w400,
    //                             // height: 1.5,
    //                           ),
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 ],
    //               ),
    //             ),
    //             Container(),
    //           ],
    //         ),
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           crossAxisAlignment: CrossAxisAlignment.end,
    //           children: [
    //             Image.asset(AppImage.left_mountain_image, height: 200),
    //             Image.asset(AppImage.right_mountain_image, height: 100),
    //           ],
    //         ),
    //       ],
    //     ),
    //     Positioned(
    //       bottom: 30,
    //       child: Image.asset(AppImage.samurai_image, height: 200),
    //     ),
    //     Positioned(
    //       bottom: 0,
    //       child: Padding(
    //         padding: const EdgeInsets.only(left: 20),
    //         child: Image.asset(AppImage.bottom_mountain_image, height: 100),
    //       ),
    //     ),
    //   ],
    // );
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
