import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/core/constant/app_color.dart';

import 'package:portfolio_website/feature/education/widget/common_education.dart';

class Education extends StatelessWidget {
  Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 30),
      color: AppColor.primaryColor,
      child: Column(
        children: [
          const SizedBox(height: 40),
          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 32,
                color: AppColor.blackColor,
                fontFamily: GoogleFonts.nunitoSans().fontFamily,
              ),
              children: [
                TextSpan(text: "My "),
                TextSpan(
                  text: "Education",
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
              ],
            ),
          ),
          CommonEducationExperince(
            companyName: 'IDOL, University of Mumbai - Distance Learning',
            date: '09/2023 - 08/2025',
            description: 'Master of Science in Information Technology',
            designation: 'Mumbai',
          ),

          CommonEducationExperince(
            companyName: 'Tilak College of Science and Commerce',
            date: '07/2019 - 07/2021',
            description: 'Bachelor of Science in Information Technology',
            designation: 'Navi Mumbai',
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
