import 'package:portfolio_website/core/constant/app_image.dart';

class AppConstant {
  static const options = [
    'About Me',
    'Education',
    'Experience',
    'Skills',
    'Work',
    'Work with me',
  ];

  static const linkdeinURL =
      "https://www.linkedin.com/in/rahul-patil-40016b182";
  static const gitHubURL = "https://github.com/patilrahu";
  static const emailURL = "mailto:patilrahulgajanan@gmail.com";

  static List<SkillSection> skillSections = [
    SkillSection(
      name: 'Flutter',
      image: AppImage.flutterLogo,
      skills:
          'Cross-platform app development, Firebase integration, REST APIs, BLoC, Clean Architecture, GetX, Provider, App Store & Play Store deployment',
    ),
    SkillSection(
      name: 'React Native',
      image: AppImage.reactNativeLogo,
      skills:
          'Cross-platform mobile development, Hooks, Navigation, ERPNext API integration',
    ),
    SkillSection(
      name: 'ERPNext / Frappe',
      image: AppImage.erpLogo,
      skills:
          'Client & server scripting, API integration, mobile module customization, business automation',
    ),
    SkillSection(
      name: 'iOS (Swift)',
      image: AppImage.swiftLogo,
      skills:
          'SwiftUI, UIKit, Core Data (basic), CocoaPods, Storyboards, Combine, End-to-End iOS deployment',
    ),
  ];

  static List<Map<String, String>> projects = [
    {
      'title': 'iDirect Mobile App',
      'date': '12/2025 - Present',
      'role': 'Trading App',
      'description':
          'Developed and enhanced investment and trading features for the iDirect Mobile App.\n\n'
          '• Implemented the Upcoming Corporate Actions & Order Book feature and improved the Mutual Fund module to enhance user engagement.\n\n'
          '• Optimized app performance, resolved critical bugs, and improved overall user experience across Android and iOS platforms.\n\n',
      'link':
          'https://play.google.com/store/apps/details?id=com.icicidirect.idirectsuper',
      'image': AppImage.iciciDirectLogo,
    },
    {
      'title': 'CryptoTracker',
      'date': '10/2025 - 11/2025',
      'role': 'Personal Project',
      'description':
          'Built a real-time cryptocurrency tracker showing live prices, market cap, 24h volume, and BTC dominance.\n\n'
          '• Implemented search functionality to filter coins by name or symbol.\n\n'
          '• Used Combine for reactive data updates and SwiftUI Charts for 7-day trend visualization.\n\n'
          '• Designed a dark-themed UI with smooth gradients and SF Symbols for a modern look.',
      'link': 'https://github.com/patilrahu/CryptoTracker',
      'image': AppImage.cryptoTrackerLogo,
    },
    {
      'title': 'Inminit',
      'date': '04/2025 - 05/2025',
      'role': 'IOS Deployment',
      'description':
          '• Resolved bugs in seller and customer apps.\n\n'
          '• Managed full iOS deployment to the App Store.',
      'link': 'https://apps.apple.com/in/app/inminit-seller/id6745968052',
      'image': AppImage.inmintLogo,
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
