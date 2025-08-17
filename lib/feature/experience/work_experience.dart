import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/core/constant/app_color.dart';
import 'package:portfolio_website/feature/experience/widget/common_work_experince.dart';

class WorkExperience extends StatelessWidget {
  WorkExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,

      color: Colors.black,
      child: Column(
        children: [
          const SizedBox(height: 50),
          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 32,
                color: AppColor.blackColor,
                fontFamily: GoogleFonts.nunitoSans().fontFamily,
              ),
              children: [
                TextSpan(
                  text: "My ",
                  style: TextStyle(
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                TextSpan(
                  text: "Experience",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: AppColor.primaryColor,
                  ),
                ),
              ],
            ),
          ),
          CommonWorkExperince(
            companyName: 'ORDNUNGSKRAFT IT ADVISORY PRIVATE LIMITED',
            date: '11/2024 - Present',
            designation: 'Flutter Developer',
            description:
                'Developed and maintained cross-platform mobile applications using Flutter and React Native, seamlessly integrated with ERPNext backend systems.'
                'Customized ERPNext client-side scripts to automate business workflows, improving efficiency and reducing manual effort.'
                'Collaborated with a cross-functional team to design and implement a dedicated mobile module for ERPNext, enhancing system accessibility and usability on mobile devices.',
          ),
          CommonWorkExperince(
            date: '05/2022 – 11/2024',
            designation: 'iOS / Flutter Developer',
            companyName: 'Traverse Tech Labs',
            description:
                'Developed and deployed high-performance mobile applications using Flutter for both Android and iOS platforms.'
                'Contributed to Flutter Web and Desktop development to expand product accessibility across platforms.'
                'Proactively explored and adopted new tools, libraries, and technologies to enhance development workflows and product quality.',
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
