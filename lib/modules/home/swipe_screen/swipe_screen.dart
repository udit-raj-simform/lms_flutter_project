import 'package:lms_flutter_project/modules/home/swipe_screen/activity_screen.dart';
import 'package:lms_flutter_project/utils/exports.dart';

class SwipeScreen extends StatelessWidget {
  const SwipeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.push(
            context,
            // MaterialPageRoute(
            //   builder: (context) => const ActivityScreen(),
            // ),
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  const ActivityScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                const begin = Offset(0.0, 1.0);
                const end = Offset.zero;
                final tween = Tween(begin: begin, end: end);
                final offsetAnimation = animation.drive(tween);
                return SlideTransition(
                  position: offsetAnimation,
                  child: child,
                );
              },
            ),
          ),
          child: const Text("New page"),
        ),
      ),
    );
  }
}
