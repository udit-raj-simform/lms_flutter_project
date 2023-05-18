import 'package:lms_flutter_project/utils/exports.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Activities"),
          ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("go back"))
        ],
      )),
    );
  }
}
