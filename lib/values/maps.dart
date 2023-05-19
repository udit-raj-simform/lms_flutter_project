class Maps {
  static final Map<String, String> bottomNavItemImages = <String, String>{
    "logo": "assets/icons/logo.png",
    "search": "assets/icons/search.png",
    "sparkle": "assets/icons/spark.png",
    "chat": "assets/icons/chat.png",
    "user": "assets/icons/user.png",
    "notification": "assets/icons/bell.png",
    "filter": "assets/icons/adjustment.png",
  };

  static String getBottomNavItemImages(Map<String, String> images, int index) {
    switch (index) {
      case 0:
        return bottomNavItemImages["logo"]!;
      case 1:
        return bottomNavItemImages["search"]!;
      case 2:
        return bottomNavItemImages["sparkle"]!;
      case 3:
        return bottomNavItemImages["chat"]!;
      case 4:
        return bottomNavItemImages["user"]!;
      case 5:
        return bottomNavItemImages["notification"]!;
      case 6:
        return bottomNavItemImages["filter"]!;
      default:
        return bottomNavItemImages["logo"]!;
    }
  }
}
