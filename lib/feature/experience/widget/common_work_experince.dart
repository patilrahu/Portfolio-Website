import 'package:flutter/material.dart';
import 'package:portfolio_website/core/constant/app_color.dart';
import 'package:portfolio_website/core/constant/app_image.dart';
import 'package:portfolio_website/core/helper/responsive.dart';

class CommonWorkExperince extends StatelessWidget {
  String date;
  String designation;
  String companyName;
  String description;
  CommonWorkExperince({
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
        border: Border.all(width: 0.5, color: AppColor.primaryColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 20,
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 20,
              children: [
                Image.asset(AppImage.workLogo, color: Colors.white),
                Expanded(
                  child: Column(
                    spacing: 20,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "$designation at $companyName",

                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        description,
                        style: TextStyle(
                          color: AppColor.greyColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Text(
            date,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColor.primaryColor,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
