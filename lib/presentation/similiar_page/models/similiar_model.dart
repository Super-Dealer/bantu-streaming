import '../../../core/app_export.dart';
import 'similiar_item_model.dart';

/// This class defines the variables used in the [similiar_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SimiliarModel {
  Rx<List<SimiliarItemModel>> similiarItemList = Rx([
    SimiliarItemModel(
        image: ImageConstant.imgRectangle12078.obs,
        image1: ImageConstant.imgRectangle12078140x102.obs,
        image2: ImageConstant.imgRectangle120781.obs)
  ]);
}
