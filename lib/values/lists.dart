import 'package:lms_flutter_project/modules/home/category_search_screen/category_search_screen.dart';
import 'package:lms_flutter_project/modules/home/chats_screen/chats_screen.dart';
import 'package:lms_flutter_project/modules/home/likes_screen/likes_screen.dart';
import 'package:lms_flutter_project/modules/home/settings_screen/settings_screen.dart';
import 'package:lms_flutter_project/modules/home/swipe_screen/swipe_screen.dart';
import 'package:lms_flutter_project/utils/exports.dart';
import 'package:lms_flutter_project/values/constants.dart';

class Lists {
  static final List<String> bottomNavItemLabels = <String>[
    "home",
    "search",
    "likes",
    "chats",
    "profile",
  ];

  static final List<BottomNavigationBarItem> bottomNavItems = List.generate(
    Constants.bottomNavItemCount,
        (index) =>
        BottomNavigationBarItem(
          icon: Image.asset(
            Maps.getBottomNavItemImages(Maps.bottomNavItemImages, index),
            height: 20.0,
            width: 20.0,
            color: MyColors.iconGrey,
          ),
          activeIcon: ShaderMask(
            shaderCallback: (Rect bounds) =>
                Gradients.primary.createShader(bounds),
            child: Image.asset(
              Maps.getBottomNavItemImages(Maps.bottomNavItemImages, index),
              height: 20.0,
              width: 20.0,
              color: Colors.white,
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
