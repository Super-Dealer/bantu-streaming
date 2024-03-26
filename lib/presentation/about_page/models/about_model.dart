import '../../../core/app_export.dart';
import 'about_item_model.dart';

/// This class defines the variables used in the [about_page],
/// and is typically used to hold data that is passed between different parts of the application.
class AboutModel {
  Rx<List<AboutItemModel>> aboutItemList = Rx([
    AboutItemModel(
        menaMassoud: ImageConstant.imgRectangle12050.obs,
        menaMassoud1: "Mena Massoud".obs),
    AboutItemModel(
        menaMassoud: ImageConstant.imgRectangle12050127x104.obs,
        menaMassoud1: "Naomi Scott".obs),
    AboutItemModel(
        menaMassoud: ImageConstant.imgRectangle120501.obs,
        menaMassoud1: "Will Smith".obs),
    AboutItemModel(
        menaMassoud: ImageConstant.imgRectangle120502.obs,
        menaMassoud1: "Mena Massoud".obs)
  ]);
}
