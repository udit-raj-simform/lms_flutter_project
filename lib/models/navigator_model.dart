import 'package:lms_flutter_project/utils/exports.dart';

class NavigatorModel extends StatelessWidget {
  const NavigatorModel({
    Key? key,
    required this.childIndex,
  }) : super(key: key);
  final int childIndex;

  @override
  Widget build(BuildContext context) {
    debugPrint(childIndex.toString());
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              return Lists.screens[childIndex];
            });
      },
    );
  }
}
