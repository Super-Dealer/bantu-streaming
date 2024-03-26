import '../../../core/app_export.dart';
import 'categorycomedy_item_model.dart';

/// This class defines the variables used in the [category_comedy_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoryComedyModel {
  Rx<List<CategorycomedyItemModel>> categorycomedyItemList = Rx([
    CategorycomedyItemModel(rectangle: ImageConstant.imgRectangle12078.obs),
    CategorycomedyItemModel(
        rectangle: ImageConstant.imgRectangle12078140x102.obs),
    CategorycomedyItemModel(rectangle: ImageConstant.imgRectangle120781.obs)
  ]);
}
