import 'package:lms_flutter_project/utils/exports.dart';

class TinderAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TinderAppBar({Key? key, this.actions}) : super(key: key);
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: false,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            Maps.bottomNavItemImages["logo"]!,
            height: 20.0,
            width: 20.0,
            color: MyColors.primaryStart,
          ),
          const SizedBox(
            width: 2,
          ),
          const Text(
            "tinder",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28.0,
              color: MyColors.primaryStart,
              // fontFamily: "tinder",
              letterSpacing: -1.0,
            ),
          ),
        ],
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
