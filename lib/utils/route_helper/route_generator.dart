import 'package:flutter/cupertino.dart';
import 'package:lms_flutter_project/utils/exports.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        if (Constants.isIOS) {
          return CupertinoPageRoute(builder: (_) => const HomeScreen());
        } else {
          return MaterialPageRoute(builder: (_) => const HomeScreen());
        }
      case "/login_intro":
        return MaterialPageRoute(builder: (_) => const LoginIntroScreen());
      case "/swipe":
        return MaterialPageRoute(builder: (_) => const SwipeScreen());
      case "/category":
        return MaterialPageRoute(builder: (_) => const CategorySearchScreen());
      case "/like":
        return MaterialPageRoute(builder: (_) => const LikesScreen());
      case "/chat":
        return MaterialPageRoute(builder: (_) => const ChatsScreen());
      case "/profile":
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case "/activity_screen":
        return MaterialPageRoute(builder: (_) => const ActivityScreen());
      case "/photo_verified_match":
        return transitionBuilder(const VerifiedPhotoSwipeScreen(), settings);
      default:
        return MaterialPageRoute(builder: (_) => const ErrorScreen());
    }
  }

  static PageRouteBuilder transitionBuilder(
      Widget routePage, RouteSettings settings) {
    return PageRouteBuilder(
        settings: settings,
        pageBuilder: (context, animation, secondaryAnimation) => routePage,
        transitionDuration: const Duration(milliseconds: 1000),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const Offset begin = Offset(0.0, 1.0);
          const Offset end = Offset.zero;
          const Curve curves = Curves.decelerate;
          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curves));
          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        });
  }
}
