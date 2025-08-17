import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/constant/app_color.dart';
import 'package:portfolio_website/core/helper/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class CommonProject extends StatelessWidget {
  final int index;
  final String title;
  final String description;
  final String link;
  final String image;
  final bool isImageLeft;

  const CommonProject({
    super.key,
    required this.index,
    required this.title,

    required this.description,
    required this.link,
    required this.image,
    this.isImageLeft = true,
  });

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);

    Widget projectDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Text(
          '0${index.toString()}',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 15),
        Text(
          description,
          style: TextStyle(
            color: AppColor.greyColor,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 30),
        GestureDetector(
          onTap: () => _launchURL(link),
          child: Icon(Icons.link, color: Colors.white),
        ),
      ],
    );

    Widget projectImage = ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(10),

      child: Image.asset(image, height: 200, width: 200, fit: BoxFit.cover),
    );

    if (isMobile) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [projectImage, SizedBox(height: 15), projectDetails],
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: isImageLeft
          ? [projectImage, SizedBox(width: 20), projectDetails]
          : [projectDetails, SizedBox(width: 20), projectImage],
    );
  }
}
