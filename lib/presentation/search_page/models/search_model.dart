import 'recentsearches_item_model.dart';
import '../../../core/app_export.dart';
import 'frame1_item_model.dart';
import 'frame2_item_model.dart';

/// This class defines the variables used in the [search_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchModel {
  Rx<List<RecentsearchesItemModel>> recentsearchesItemList =
      Rx(List.generate(4, (index) => RecentsearchesItemModel()));

  Rx<List<Frame1ItemModel>> frame1ItemList = Rx([
    Frame1ItemModel(rectangle: ImageConstant.imgRectangle12078135x98.obs),
    Frame1ItemModel(rectangle: ImageConstant.imgRectangle12079.obs),
    Frame1ItemModel(rectangle: ImageConstant.imgRectangle12080.obs),
    Frame1ItemModel(rectangle: ImageConstant.imgRectangle12081.obs)
  ]);

  Rx<List<Frame2ItemModel>> frame2ItemList = Rx([
    Frame2ItemModel(rectangle: ImageConstant.imgRectangle12082.obs),
    Frame2ItemModel(rectangle: ImageConstant.imgRectangle12083.obs),
    Frame2ItemModel(rectangle: ImageConstant.imgRectangle12084.obs),
    Frame2ItemModel(rectangle: ImageConstant.imgRectangle12085.obs)
  ]);
}
