import 'package:lms_flutter_project/utils/exports.dart';

class VerifiedPhotoSwipeScreen extends StatelessWidget {
  const VerifiedPhotoSwipeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Text("Hell o woe d")),
        ),
      ),
    );
  }
}
