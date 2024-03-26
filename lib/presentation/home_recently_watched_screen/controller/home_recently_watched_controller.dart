import '../../../core/app_export.dart';
import '../models/home_recently_watched_model.dart';

/// A controller class for the HomeRecentlyWatchedScreen.
///
/// This class manages the state of the HomeRecentlyWatchedScreen, including the
/// current homeRecentlyWatchedModelObj
class HomeRecentlyWatchedController extends GetxController {
  Rx<HomeRecentlyWatchedModel> homeRecentlyWatchedModelObj =
      HomeRecentlyWatchedModel().obs;

  Rx<int> sliderIndex = 0.obs;
}
