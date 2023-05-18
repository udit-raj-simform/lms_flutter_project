import 'package:lms_flutter_project/utils/exports.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ElevatedButton(
          child: const Text("SettingsScreen"),
          onPressed: () {
            Navigator.popUntil(context, (route) {
              debugPrint(route.toString());
              return false;
            });
          },
        ),
      ),
    );
  }
}
