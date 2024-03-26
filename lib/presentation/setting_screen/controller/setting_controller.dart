import '../../../core/app_export.dart';
import '../models/setting_model.dart';

/// A controller class for the SettingScreen.
///
/// This class manages the state of the SettingScreen, including the
/// current settingModelObj
class SettingController extends GetxController {
  Rx<SettingModel> settingModelObj = SettingModel().obs;

  Rx<bool> isSelectedSwitch = false.obs;

  Rx<bool> isSelectedSwitch1 = false.obs;

  Rx<bool> isSelectedSwitch2 = false.obs;

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.languageScreen,
    );
  }
}
