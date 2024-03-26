import 'package:bantu/presentation/select_saved_screen/controller/select_saved_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelectSavedScreen.
///
/// This class ensures that the SelectSavedController is created when the
/// SelectSavedScreen is first loaded.
class SelectSavedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectSavedController());
  }
}
