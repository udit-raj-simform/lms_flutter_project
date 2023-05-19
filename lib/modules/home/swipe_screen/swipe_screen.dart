import 'package:lms_flutter_project/utils/exports.dart';

class SwipeScreen extends StatelessWidget {
  const SwipeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, Routes.activity),
          child: const Text("New page"),
        ),
      ),
    );
  }
}
