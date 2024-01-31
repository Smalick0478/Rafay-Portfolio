import 'package:flutter/material.dart';
import 'package:rafay_portfolio/frontend/screens/NotFound_page.dart';
import 'package:rafay_portfolio/frontend/screens/aboutme_page.dart';
import 'package:rafay_portfolio/frontend/screens/blog.dart';
import 'frontend/screens/Resume_page.dart';
import 'frontend/screens/contentMe_page.dart';
import 'frontend/screens/splash_page.dart';
import 'frontend/theme/light.dart';
import 'frontend/screens/home_page.dart';
import 'frontend/screens/service_page.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: lightMode,
//       home: const SplashScreen(),
//       onGenerateRoute: (RouteSettings settings) {
//         switch (settings.name) {
//           case '/':
//             return MaterialPageRoute(
//                 builder: (context) => const SplashScreen());
//           case '/home':
//             return MaterialPageRoute(builder: (context) => const HomePage());
//           case '/services':
//             return MaterialPageRoute(
//                 builder: (context) => const ServicesPage());
//           case '/resume':
//             return MaterialPageRoute(builder: (context) => const ResumePage());
//           case '/contact':
//             return MaterialPageRoute(
//                 builder: (context) => const ContactMePage());
//           case '/blog':
//             return MaterialPageRoute(builder: (context) => const BlogPage());
//           case '/404':
//             return MaterialPageRoute(
//                 builder: (context) => const NotFoundPage());
//           default:
//             return MaterialPageRoute(
//                 builder: (context) => const NotFoundPage());
//         }
//       },
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      home: const SplashScreen(),
      initialRoute: '/',
      routes: {
        '/home': (context) => const HomePage(),
        '/services': (context) => const ServicesPage(),
        '/resume': (context) => const ResumePage(),
        '/contact': (context) => const ContactMePage(),
        '/blog': (context) => const BlogPage(),
        '/404': (context) => const NotFoundPage(),
        '/aboutme': (context) => const AboutMePage(),
      },
      onUnknownRoute: (settings) {
        // Return the 'NotFoundPage' for all unknown routes.
        return MaterialPageRoute(builder: (context) => const NotFoundPage());
      },
    );
  }
}
