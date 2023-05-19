import 'package:lms_flutter_project/utils/exports.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(const MyTinderApp()));
}

class MyTinderApp extends StatelessWidget {
  const MyTinderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appTitle,
      theme: AppTheme().light(),
      initialRoute: NavigationManager.returnNavigationRoute(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
