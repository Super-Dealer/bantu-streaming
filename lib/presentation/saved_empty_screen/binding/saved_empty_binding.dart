import 'package:bantu/presentation/saved_empty_screen/controller/saved_empty_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SavedEmptyScreen.
///
/// This class ensures that the SavedEmptyController is created when the
/// SavedEmptyScreen is first loaded.
class SavedEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SavedEmptyController());
  }
}
