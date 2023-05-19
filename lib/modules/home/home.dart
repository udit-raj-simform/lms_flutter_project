import 'package:lms_flutter_project/utils/exports.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _bottomNavIndex = 0;

  updateBottomNavIndex(int newIndex) => setState(() {
        _bottomNavIndex = newIndex;
      });

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_bottomNavIndex != 0) {
          setState(() {
            _bottomNavIndex = 0;
          });
        } else {
          return NavigationManager.managePopScope(context);
        }
        return false;
      },
      child: Scaffold(
        appBar: const TinderAppBar(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _bottomNavIndex,
          onTap: (int value) => updateBottomNavIndex(value),
          items: Lists.bottomNavItems,
        ),
        body: SafeArea(
          child: Lists.screens[_bottomNavIndex],
        ),
      ),
    );
  }
}
