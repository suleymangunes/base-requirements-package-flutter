import 'package:hive_flutter/hive_flutter.dart';

class IntroCaching {
  const IntroCaching._();

  static final Box _intro = Hive.box('intro');

  static Future<void> init() async {
    await Hive.openBox('intro');
  }

  static String initialIntro() {
    switch (_intro.get('introWatched')) {
      case true:
        return '/setting';
      default:
        return '/';
    }
  }

  static void watchIntro() {
    _intro.put('introWatched', true);
  }
}
