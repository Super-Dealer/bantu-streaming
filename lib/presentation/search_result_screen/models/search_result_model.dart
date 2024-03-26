import '../../../core/app_export.dart';
import 'searchresult_item_model.dart';

/// This class defines the variables used in the [search_result_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchResultModel {
  Rx<List<SearchresultItemModel>> searchresultItemList = Rx([
    SearchresultItemModel(rectangle: ImageConstant.imgRectangle12078.obs),
    SearchresultItemModel(
        rectangle: ImageConstant.imgRectangle12078140x102.obs),
    SearchresultItemModel(rectangle: ImageConstant.imgRectangle120781.obs),
    SearchresultItemModel(rectangle: ImageConstant.imgRectangle120782.obs),
    SearchresultItemModel(rectangle: ImageConstant.imgRectangle120783.obs),
    SearchresultItemModel(rectangle: ImageConstant.imgRectangle120784.obs),
    SearchresultItemModel(rectangle: ImageConstant.imgRectangle120785.obs),
    SearchresultItemModel(rectangle: ImageConstant.imgRectangle120786.obs),
    SearchresultItemModel(rectangle: ImageConstant.imgRectangle120787.obs),
    SearchresultItemModel(rectangle: ImageConstant.imgRectangle120788.obs),
    SearchresultItemModel(rectangle: ImageConstant.imgRectangle120789.obs),
    SearchresultItemModel(rectangle: ImageConstant.imgRectangle1207810.obs)
  ]);
}
