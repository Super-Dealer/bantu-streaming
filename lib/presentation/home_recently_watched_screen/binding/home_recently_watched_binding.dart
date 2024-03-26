import 'package:bantu/presentation/home_recently_watched_screen/controller/home_recently_watched_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeRecentlyWatchedScreen.
///
/// This class ensures that the HomeRecentlyWatchedController is created when the
/// HomeRecentlyWatchedScreen is first loaded.
class HomeRecentlyWatchedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeRecentlyWatchedController());
  }
}
