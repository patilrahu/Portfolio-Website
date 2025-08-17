import 'package:flutter/material.dart';
import 'package:portfolio_website/core/constant/app_color.dart';
import 'package:portfolio_website/core/constant/app_image.dart';
import 'package:portfolio_website/core/helper/responsive.dart';

class CommonEducationExperince extends StatelessWidget {
  String date;
  String designation;
  String companyName;
  String description;
  CommonEducationExperince({
    super.key,
    required this.companyName,
    required this.date,
    required this.description,
    required this.designation,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20, top: 20, left: 30, right: 30),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(width: 1.5),
      ),
      child: Row(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 20,
              children: [
                Image.asset(AppImage.educationLogo),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        description,

                        style: TextStyle(
                          color: AppColor.blackColor,
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        companyName,

                        style: TextStyle(
                          color: AppColor.blackColor,
                          fontSize: ResponsiveHelper.isMobile(context)
                              ? 20
                              : 26,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,

            children: [
              Text(
                date,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColor.blackColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                designation,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColor.greyColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
