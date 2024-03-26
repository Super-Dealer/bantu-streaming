import 'package:bantu/presentation/not_found_screen/controller/not_found_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NotFoundScreen.
///
/// This class ensures that the NotFoundController is created when the
/// NotFoundScreen is first loaded.
class NotFoundBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotFoundController());
  }
}
