import 'package:flutter/material.dart';
import 'package:portfolio_website/core/constant/app_color.dart';
import 'package:portfolio_website/core/constant/app_constant.dart';
import 'package:portfolio_website/core/constant/app_image.dart';
import 'package:portfolio_website/core/helper/responsive.dart';
import 'package:portfolio_website/core/widget/common_text_field.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController subjectController = TextEditingController();
  final TextEditingController contentController = TextEditingController();

  ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.zero,
      color: AppColor.primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: ResponsiveHelper.isMobile(context)
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 30,
                    children: [_buildFormSection(context), _buildInfoSection()],
                  )
                : Row(
                    // 💻 Desktop/Tablet -> Row
                    spacing: 50,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildFormSection(context),
                      Expanded(child: _buildInfoSection()),
                    ],
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildFormSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: CommonTextField(
            hintText: 'Your Name',
            controller: nameController,
          ),
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: CommonTextField(
            hintText: 'Email',
            controller: emailController,
          ),
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: CommonTextField(
            hintText: 'Subject',
            controller: subjectController,
          ),
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: CommonTextField(
            hintText: 'How can I help?*',
            maxLines: 3,
            controller: contentController,
          ),
        ),
        Row(
          spacing: 20,
          children: [
            GestureDetector(
              onTap: () {
                sendEmail(
                  context,
                  subject: subjectController.text,
                  body: contentController.text,
                );
              },
              child: Container(
                padding: EdgeInsets.all(10),
                width: 150,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Text(
                  'Get In Touch',
                  style: TextStyle(
                    color: AppColor.primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            _socialIcon(AppImage.linkdein_image, AppConstant.linkdeinURL),
            _socialIcon(AppImage.github_image, AppConstant.gitHubURL),
            _socialIcon(AppImage.email_image, AppConstant.emailURL),
          ],
        ),
      ],
    );
  }

  Widget _buildInfoSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Let’s talk for',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        Text(
          'Something special',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'I seek to push the limits of creativity to create high-engaging, user-friendly, and memorable interactive experiences.',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: AppColor.greyColor,
          ),
        ),
        const SizedBox(height: 40),
        GestureDetector(
          onTap: () => _launchURL(AppConstant.emailURL),
          child: Text(
            'patilrahulgajanan@gmail.com',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            const String phoneNumber = '+918291073112';
            final String whatsappUrl =
                'https://wa.me/${phoneNumber.replaceAll('+', '')}';
            _launchURL(whatsappUrl);
          },
          child: Text(
            '+918291073112',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  Widget _socialIcon(String image, String url) {
    return GestureDetector(
      onTap: () => _launchURL(url),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(width: 1.5),
        ),
        padding: EdgeInsets.all(5),
        child: Image.asset(image, height: 30, width: 30),
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

  Future<void> sendEmail(
    BuildContext context, {

    required String subject,
    required String body,
  }) async {
    if (subject.trim().isEmpty ||
        nameController.text.trim().isEmpty ||
        body.trim().isEmpty ||
        emailController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please fill in all fields before sending.'),
          backgroundColor: Colors.black,
        ),
      );
      return;
    }
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'patilrahulgajanan@gmail.com',
      queryParameters: {
        'subject': subject,
        'body':
            'Name: ${nameController.text}\nEmail: ${emailController.text}\n\n$body',
      },
    );

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
      emailController.clear();
      subjectController.clear();
      contentController.clear();
    } else {
      throw 'Could not launch email client';
    }
  }
}
