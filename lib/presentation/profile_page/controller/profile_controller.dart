import '../../../core/app_export.dart';
import '../models/profile_model.dart';

/// A controller class for the ProfilePage.
///
/// This class manages the state of the ProfilePage, including the
/// current profileModelObj
class ProfileController extends GetxController {
  ProfileController(this.profileModelObj);

  Rx<ProfileModel> profileModelObj;

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.editProfileScreen,
    );
    Get.toNamed(
      AppRoutes.notificationScreen,
    );
    Get.toNamed(
      AppRoutes.settingScreen,
    );
    Get.toNamed(
      AppRoutes.historyScreen,
    );
    Get.toNamed(
      AppRoutes.helpScreen,
    );
    Get.toNamed(
      AppRoutes.choosePlanScreen,
    );
  }
}
