import 'package:hive_flutter/hive_flutter.dart';

class IntroCaching {
  const IntroCaching._();

  static final Box _intro = Hive.box('intro');

  static Future<void> introInit() async {
    await Hive.openBox('intro');
  }

  static String initialIntro() {
    switch (_intro.get('introWatched')) {
      case true:
        // return const SettingView();
        return '/setting';
      default:
        return '/';
      // return Introduction.intro;
    }
  }

  static void watchIntro() {
    _intro.put('introWatched', true);
  }
}
