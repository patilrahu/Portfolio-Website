import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/core/constant/app_color.dart';
import 'package:portfolio_website/core/constant/app_constant.dart';

import 'package:portfolio_website/feature/projects/widget/common_project.dart';

class Project extends StatelessWidget {
  Project({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      child: Column(
        children: [
          const SizedBox(height: 20),
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
                  text: "Projects",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: AppColor.primaryColor,
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: AppConstant.projects.length,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(vertical: 20),
            itemBuilder: (context, index) {
              final project = AppConstant.projects[index];
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal: 20,
                ),
                child: CommonProject(
                  index: index + 1,
                  title: project['title']!,
                  description: project['description']!,
                  link: project['link']!,
                  image: project['image']!,
                  isImageLeft: index % 2 == 0,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
