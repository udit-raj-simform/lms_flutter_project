import 'package:lms_flutter_project/utils/exports.dart';

class LoginIntroScreen extends StatelessWidget {
  const LoginIntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: Gradients.primary),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    Maps.bottomNavItemImages["logo"]!,
                    height: 40.0,
                    width: 40.0,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "tinder",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 45.0,
                      color: Colors.white,
                      // fontFamily: "tinder",
                      letterSpacing: -1.0,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  LoginButton(
                    text: "LOG IN WITH GOOGLE",
                    image: "assets/icons/google.png",
                    onTap: () {
                      NavigationManager.isLoggedIn = true;
                      Navigator.pushNamedAndRemoveUntil(context, Routes.home,
                          ModalRoute.withName(Routes.loginIntro));
                    },
                  ),
                  LoginButton(
                    text: "LOG IN WITH FACEBOOK",
                    image: "assets/icons/facebook.png",
                    onTap: () {},
                  ),
                  LoginButton(
                    text: "LOG IN WITH PHONE NUMBER",
                    image: "assets/icons/message.png",
                    onTap: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
