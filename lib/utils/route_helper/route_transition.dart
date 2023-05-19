import 'package:lms_flutter_project/utils/exports.dart';

class SlideRightRoute extends PageRouteBuilder {
  final Widget page;

  SlideRightRoute(this.page)
      : super(
            pageBuilder: (context, animation1, animation2) {
              return page;
            },
            transitionDuration: const Duration(seconds: 1),
            barrierDismissible: true,
            barrierColor: Colors.blue,
            barrierLabel: 'hello',
            reverseTransitionDuration: const Duration(seconds: 1),
            fullscreenDialog: true,
            transitionsBuilder: (context, animation1, animation2, child) {
              return SlideTransition(
                position: Tween(begin: const Offset(1, 0), end: Offset.zero)
                    .animate(animation1),
                child: child,
              );
            });
}

class SlideTopRoute extends PageRouteBuilder {
  final Widget page;

  SlideTopRoute(this.page)
      : super(
            pageBuilder: (context, animation1, animation2) {
              return page;
            },
            transitionDuration: const Duration(seconds: 1),
            barrierDismissible: true,
            reverseTransitionDuration: const Duration(seconds: 1),
            fullscreenDialog: true,
            transitionsBuilder: (context, animation1, animation2, child) {
              return SlideTransition(
                position: Tween(begin: const Offset(0, 1), end: Offset.zero)
                    .animate(animation1),
                child: child,
              );
            });
}

class ScaleRoute extends PageRouteBuilder {
  final Widget page;

  ScaleRoute(this.page)
      : super(
            pageBuilder: (context, animation1, animation2) {
              return page;
            },
            transitionDuration: const Duration(seconds: 5),
            transitionsBuilder: (context, animation1, animation2, child) {
              return ScaleTransition(
                scale: Tween(begin: 0.0, end: 1.0).animate(animation1),
                child: child,
              );
            });
}

class RotationRoute extends PageRouteBuilder {
  final Widget page;

  RotationRoute(this.page)
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionDuration: const Duration(seconds: 5),
          fullscreenDialog: true,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              RotationTransition(
            turns: Tween<double>(
              begin: 0.0,
              end: 1.0,
            ).animate(
              CurvedAnimation(
                parent: animation,
                curve: Curves.bounceOut,
              ),
            ),
            child: child,
          ),
        );
}

class EnterExitRoute extends PageRouteBuilder {
  final Widget enterPage;
  final Widget exitPage;

  EnterExitRoute(this.exitPage, this.enterPage)
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              enterPage,
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              Stack(
            children: <Widget>[
              SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, 0.0),
                  end: const Offset(0.0, 0.0),
                )
                    .chain(
                      CurveTween(curve: Curves.decelerate),
                    )
                    .animate(animation),
                child: exitPage,
              ),
              SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, 1.0),
                  end: Offset.zero,
                ).animate(animation),
                child: enterPage,
              )
            ],
          ),
        );
}
