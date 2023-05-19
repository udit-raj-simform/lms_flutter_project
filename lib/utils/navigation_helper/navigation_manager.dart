import 'package:lms_flutter_project/utils/exports.dart';

class NavigationManager {
  static bool isLoggedIn = false;

  static updateLoginStatus() => isLoggedIn = !isLoggedIn;

  static String returnNavigationRoute() {
    if (isLoggedIn) {
      // debugPrint("NavigationManager: ${Routes.home}");
      return Routes.home;
    } else {
      // debugPrint("NavigationManager: ${Routes.loginIntro}");
      return Routes.loginIntro;
    }
  }

  static Future<bool> managePopScope(BuildContext context) async {
    return await Future.delayed(const Duration(milliseconds: 100))
        .then((value) async {
      if (isLoggedIn) {
        return await getResultFromDialog(context);
      } else {
        return true;
      }
    });
  }

  static Future<bool> getResultFromDialog(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text("Warning!"),
              content: const Text("Do you wish to exit the app?"),
              actions: [
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context, false);
                  },
                  child: const Text("No"),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                  child: const Text("Yes"),
                ),
              ],
            ));
  }
}
