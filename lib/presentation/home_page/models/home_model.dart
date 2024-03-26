import 'widget_item_model.dart';
import '../../../core/app_export.dart';
import 'categorieslist_item_model.dart';
import 'frame_item_model.dart';
import 'aladdinlist_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<WidgetItemModel>> widgetItemList =
      Rx(List.generate(1, (index) => WidgetItemModel()));

  Rx<List<CategorieslistItemModel>> categorieslistItemList = Rx([
    CategorieslistItemModel(tabs: "All".obs),
    CategorieslistItemModel(tabs: "Action".obs),
    CategorieslistItemModel(tabs: "Comedy".obs),
    CategorieslistItemModel(tabs: "Romance".obs),
    CategorieslistItemModel(tabs: "Horor".obs)
  ]);

  Rx<List<FrameItemModel>> frameItemList = Rx([
    FrameItemModel(aladdin: ImageConstant.imgAladdin.obs),
    FrameItemModel(aladdin: ImageConstant.imgAladdin178x124.obs),
    FrameItemModel(aladdin: ImageConstant.imgAladdin1.obs)
  ]);

  Rx<List<AladdinlistItemModel>> aladdinlistItemList = Rx([
    AladdinlistItemModel(aladdin: ImageConstant.imgAladdin2.obs),
    AladdinlistItemModel(aladdin: ImageConstant.imgAladdin3.obs),
    AladdinlistItemModel(aladdin: ImageConstant.imgAladdin4.obs)
  ]);
}
