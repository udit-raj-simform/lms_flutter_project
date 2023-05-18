import 'package:lms_flutter_project/models/navigator_model.dart';
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
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavIndex,
        onTap: (int value) => updateBottomNavIndex(value),
        items: Lists.bottomNavItems,
      ),
      body: SafeArea(
        child: IndexedStack(
          index: _bottomNavIndex,
          children: const [
            NavigatorModel(
              childIndex: 0,
            ),
            NavigatorModel(
              childIndex: 1,
            ),
            NavigatorModel(
              childIndex: 2,
            ),
            NavigatorModel(
              childIndex: 3,
            ),
            NavigatorModel(
              childIndex: 4,
            ),
          ],
        ),
      ),
    );
  }
}
