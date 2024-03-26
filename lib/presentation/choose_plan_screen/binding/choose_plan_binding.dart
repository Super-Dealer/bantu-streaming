import 'package:bantu/presentation/choose_plan_screen/controller/choose_plan_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChoosePlanScreen.
///
/// This class ensures that the ChoosePlanController is created when the
/// ChoosePlanScreen is first loaded.
class ChoosePlanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChoosePlanController());
  }
}
