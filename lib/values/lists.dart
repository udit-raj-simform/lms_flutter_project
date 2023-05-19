import 'package:lms_flutter_project/utils/exports.dart';

class Lists {
  static final List<String> bottomNavItemLabels = <String>[
    "home",
    "search",
    "likes",
    "chats",
    "profile",
  ];

  static final List<BottomNavigationBarItem> bottomNavItems = List.generate(
    Values.bottomNavItemCount,
    (index) => BottomNavigationBarItem(
      icon: Image.asset(
        Maps.getBottomNavItemImages(Maps.bottomNavItemImages, index),
        height: 20.0,
        width: 20.0,
        color: MyColors.iconGrey,
      ),
      activeIcon: ShaderMask(
        shaderCallback: (Rect bounds) => Gradients.primary.createShader(bounds),
        child: Image.asset(
          Maps.getBottomNavItemImages(Maps.bottomNavItemImages, index),
          height: 20.0,
          width: 20.0,
          color: (index != 2) ? Colors.white : MyColors.primaryEnd,
        ),
      ),
      label: bottomNavItemLabels[index],
    ),
  );

  static const List<Widget> screens = [
    SwipeScreen(),
    CategorySearchScreen(),
    LikesScreen(),
    ChatsScreen(),
    SettingsScreen()
  ];
}
