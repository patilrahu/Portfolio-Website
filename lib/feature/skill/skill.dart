import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;
import 'package:portfolio_website/core/constant/app_color.dart';
import 'package:portfolio_website/core/constant/app_constant.dart';
import 'package:portfolio_website/core/constant/app_image.dart';
import 'package:portfolio_website/core/helper/responsive.dart';

class Skill extends StatelessWidget {
  const Skill({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.zero,
      color: AppColor.primaryColor,
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
                    color: AppColor.blackColor,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                TextSpan(
                  text: "Skills",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: AppColor.blackColor,
                  ),
                ),
              ],
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            itemCount: AppConstant.skillSections.length,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: ResponsiveHelper.isMobile(context) ? 2 : 4,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.7,
            ),
            itemBuilder: (context, index) {
              var skillData = AppConstant.skillSections[index];
              return ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 150),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Colors.black, width: 1.5),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const SizedBox(height: 30),
                      Image.asset(skillData.image, height: 50, width: 50),
                      const SizedBox(height: 30),
                      Text(
                        skillData.name,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        skillData.skills,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: AppColor.greyColor,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
