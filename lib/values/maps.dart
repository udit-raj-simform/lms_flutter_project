class Maps {
  static final Map<String, String> bottomNavItemImages = <String, String>{
    "logo": "assets/icons/logo.png",
    "search": "assets/icons/search.png",
  };

  static String getBottomNavItemImages(Map<String, String> images, int index) {
    switch (index) {
      case 0:
        return bottomNavItemImages["logo"]!;
      case 1:
        return bottomNavItemImages["search"]!;
      default:
        return bottomNavItemImages["logo"]!;
    }
  }
}
