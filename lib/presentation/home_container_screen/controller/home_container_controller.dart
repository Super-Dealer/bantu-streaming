import '../../../core/app_export.dart';
import '../models/home_container_model.dart';

/// A controller class for the HomeContainerScreen.
///
/// This class manages the state of the HomeContainerScreen, including the
/// current homeContainerModelObj
class HomeContainerController extends GetxController {
  var id = Get.arguments[NavigationArgs.id];

  Rx<HomeContainerModel> homeContainerModelObj = HomeContainerModel().obs;

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.profilePage,
    ); // TODO: implement Actions
    Get.toNamed(
      AppRoutes.savedPage,
    );
    Get.toNamed(
      AppRoutes.searchPage,
    );
    Get.toNamed(
      AppRoutes.homePage,
    );
  }
}
