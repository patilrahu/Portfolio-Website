import 'package:animated_mouse_cursor/animated_mouse_cursor.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/constant/app_color.dart';
import 'package:portfolio_website/core/constant/app_constant.dart';
import 'package:portfolio_website/core/constant/app_image.dart';
import 'package:portfolio_website/core/helper/responsive.dart';

import 'package:portfolio_website/feature/contact_us/contact_us.dart';
import 'package:portfolio_website/feature/education/education.dart';
import 'package:portfolio_website/feature/experience/work_experience.dart';
import 'package:portfolio_website/feature/profile/profile.dart';
import 'package:portfolio_website/feature/home/widget/option_widget.dart';
import 'package:portfolio_website/feature/projects/project.dart';
import 'package:portfolio_website/feature/skill/skill.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ScrollController _scrollController = ScrollController();

  final GlobalKey profileKey = GlobalKey();
  final GlobalKey educationKey = GlobalKey();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey workExpKey = GlobalKey();
  final GlobalKey skillKey = GlobalKey();
  final GlobalKey projectKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();

  int selectedIndex = 0;

  void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
        alignment: 0,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedMouseCursor(
      child: Scaffold(
        key: _scaffoldKey,
        endDrawer: !ResponsiveHelper.isMobile(context)
            ? null
            : Drawer(
                backgroundColor: AppColor.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(0),
                ),
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          alignment: Alignment.center,
                          child: Image.asset(AppImage.appLogo, height: 100),
                        ),
                        Positioned(
                          right: 0,
                          child: IconButton(
                            onPressed: () {
                              _scaffoldKey.currentState!.closeEndDrawer();
                            },
                            icon: Icon(Icons.clear, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    OptionWidget(
                      options: AppConstant.options,
                      onPressed: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                        _scaffoldKey.currentState!.closeEndDrawer();
                        _showPage(index);
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: GestureDetector(
                        onTap: () {
                          final String resumeURL =
                              'https://drive.google.com/file/d/1ru2QCXBdy7qh2kSLi0tq8kK1SD9-SYfd/view?usp=share_link';

                          _launchURL(resumeURL);
                        },
                        child: Row(
                          spacing: 10,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Download My Resume ',
                              style: TextStyle(
                                color: AppColor.blackColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                shadows: [
                                  Shadow(
                                    blurRadius: 3,
                                    color: Colors.grey.shade400,
                                    offset: Offset(1.5, 1.5),
                                  ),
                                ],
                              ),
                            ),
                            Icon(Icons.download_rounded),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          scrolledUnderElevation: 0,
          leading: null,
          backgroundColor: AppColor.primaryColor,
          title: ResponsiveHelper.isMobile(context)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Image.asset(AppImage.appLogo, height: 40)],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(AppImage.appLogo),
                    OptionWidget(
                      options: AppConstant.options,
                      onPressed: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                        _showPage(index);
                      },
                    ),
                    GestureDetector(
                      onTap: () {
                        final String resumeURL =
                            'https://drive.google.com/file/d/1ru2QCXBdy7qh2kSLi0tq8kK1SD9-SYfd/view?usp=share_link';

                        _launchURL(resumeURL);
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.only(top: 6),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          spacing: 10,
                          children: [
                            Text(
                              'Resume',
                              style: TextStyle(
                                color: AppColor.primaryColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Icon(Icons.download_rounded, color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Scrollbar(
                controller: _scrollController,
                thickness: 10,

                child: WebSmoothScroll(
                  controller: _scrollController,
                  scrollSpeed: 2.1,
                  scrollAnimationLength: 800,
                  curve: Curves.easeInOutCirc,
                  child: SingleChildScrollView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: _scrollController,
                    child: Column(
                      children: [
                        Container(key: profileKey, child: Profile()),
                        Container(key: educationKey, child: Education()),
                        Container(key: workExpKey, child: WorkExperience()),
                        Container(key: skillKey, child: Skill()),
                        Container(key: projectKey, child: Project()),
                        Container(key: contactKey, child: ContactUs()),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _showPage(int index) {
    switch (index) {
      case 0:
        scrollToSection(profileKey);
        break;
      case 1:
        scrollToSection(educationKey);
        break;
      case 2:
        scrollToSection(workExpKey);
        break;
      case 3:
        scrollToSection(skillKey);
        break;
      case 4:
        scrollToSection(projectKey);
        break;
      case 5:
        scrollToSection(contactKey);
        break;
    }
  }
}
