import 'package:bantu/presentation/no_history_screen/controller/no_history_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NoHistoryScreen.
///
/// This class ensures that the NoHistoryController is created when the
/// NoHistoryScreen is first loaded.
class NoHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NoHistoryController());
  }
}
