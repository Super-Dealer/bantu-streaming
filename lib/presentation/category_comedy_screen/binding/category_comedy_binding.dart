import 'package:bantu/presentation/category_comedy_screen/controller/category_comedy_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CategoryComedyScreen.
///
/// This class ensures that the CategoryComedyController is created when the
/// CategoryComedyScreen is first loaded.
class CategoryComedyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoryComedyController());
  }
}
