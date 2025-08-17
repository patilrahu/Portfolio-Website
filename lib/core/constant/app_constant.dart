import 'package:portfolio_website/core/constant/app_image.dart';

class AppConstant {
  static const options = [
    'About Me',
    'Education',
    'Experience',
    'Skills',
    'Project',
    'Contact Me',
  ];

  static const linkdeinURL =
      "https://www.linkedin.com/in/rahul-patil-40016b182";
  static const gitHubURL = "https://github.com/patilrahu";
  static const emailURL = "mailto:patilrahulgajanan@gmail.com";

  static List<SkillSection> skillSections = [
    SkillSection(
      name: 'Flutter',
      image: AppImage.flutterLogo,
      skills: 'BLoC, GetX, Provider, Firebase',
    ),
    SkillSection(
      name: 'React Native',
      image: AppImage.reactNativeLogo,
      skills: 'Cross-platform dev, Hooks, Navigation',
    ),
    SkillSection(
      name: 'ERPNext / Frappe',
      image: AppImage.erpLogo,
      skills: 'Client & Server Scripting',
    ),
    SkillSection(
      name: 'iOS (Swift)',
      image: AppImage.swiftLogo,
      skills:
          ' ViewControllers, Storyboards, CocoaPods, End-to-End App Store Deployment, Provisioning Profiles, Certificates',
    ),
  ];

  static List<Map<String, String>> projects = [
    {
      'title': 'Chat App',
      'date': '08/2025 - Present',
      'role': 'Personal Project',
      'description':
          'Developed a real-time chat application using Flutter and Node.js.\n\n'
          '• Designed secure login/signup, message synchronization, and instant communication.\n\n'
          '• Used Clean Architecture and BLoC for state management.\n\n'
          '• Backend with Express.js, Socket.IO, and MongoDB.',
      'link': 'https://github.com/patilrahu/Chat-App-Backend',
      'image': AppImage.projectLogo,
    },
    {
      'title': 'Inminit',
      'date': '04/2025 - 05/2025',
      'role': 'Freelancing',
      'description':
          '• Resolved bugs in seller and customer apps.\n\n'
          '• Managed full iOS deployment to the App Store.',
      'link': 'https://apps.apple.com/in/app/inminit-seller/id6745968052',
      'image': AppImage.inmintLogo,
    },
    {
      'title': 'Shopper',
      'date': '06/2024 - 11/2024',
      'role': 'E-Commerce Platform',
      'description':
          '• Developed a user-friendly e-commerce platform for web and mobile.\n\n'
          '• Enabled buyers to browse products, track orders, and manage returns.\n\n'
          '• Built an admin panel for sellers.\n\n'
          '• Multi-role support for users, sellers, support staff, and admins.',
      'link':
          'https://drive.google.com/drive/u/1/folders/1qdsU1YJF9F76ZgcK03ERW8xAhceRyyJ-',
      'image': AppImage.projectLogo,
    },
    {
      'title': 'Canvia',
      'date': '08/2023 - 07/2024',
      'role': 'Smart Image Display App',
      'description':
          '• Built a smart image display app with enhanced UI/UX, increasing user engagement by 35%.\n\n'
          '• Integrated real-time hardware sync, reducing sync errors by 20%.',
      'link':
          'https://play.google.com/store/apps/details?id=com.palacio.canvia',
      'image': AppImage.cnaviaLogo,
    },
    {
      'title': 'Sadguru Enlightens',
      'date': '02/2023 - 03/2023',
      'role': 'Spiritual Content App',
      'description':
          '• Built a spiritual content app, increasing user retention by 40%.\n\n'
          '• Created custom media players, contributing to a 30% increase in video/audio session durations.\n\n'
          '• Implemented Firebase push notifications and In-App Purchases.',
      'link': 'https://apps.apple.com/in/app/sadguru-enlightens/id925643151',
      'image': AppImage.sadguruLogo,
    },
  ];
}

class SkillSection {
  final String name;
  final String image;
  final String skills;

  SkillSection({required this.name, required this.image, required this.skills});
}
