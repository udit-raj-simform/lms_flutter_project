import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

mixin Constants {
  static final MediaQueryData _mediaQueryData =
      MediaQueryData.fromWindow(WidgetsBinding.instance.window);

  static final Size _size = _mediaQueryData.size;

  static final double width = _size.width;
  static final double height = _size.height;

  static bool isDesktop =
      (Platform.isWindows || Platform.isMacOS || Platform.isLinux);
  static bool isMobile = (Platform.isIOS || Platform.isAndroid);
  static bool isAndroid = (defaultTargetPlatform == TargetPlatform.android);
  static bool isIOS = (defaultTargetPlatform == TargetPlatform.iOS);
}
