import 'package:lms_flutter_project/utils/exports.dart';

void main() {
  runApp(const MyTinderApp());
}

class MyTinderApp extends StatelessWidget {
  const MyTinderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appTitle,
      theme: AppTheme().light(),
      home: Scaffold(),
    );
  }
}
