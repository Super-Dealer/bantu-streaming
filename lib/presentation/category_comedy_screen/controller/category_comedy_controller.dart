import '../../../core/app_export.dart';
import '../models/category_comedy_model.dart';

/// A controller class for the CategoryComedyScreen.
///
/// This class manages the state of the CategoryComedyScreen, including the
/// current categoryComedyModelObj
class CategoryComedyController extends GetxController {
  Rx<CategoryComedyModel> categoryComedyModelObj = CategoryComedyModel().obs;
}
