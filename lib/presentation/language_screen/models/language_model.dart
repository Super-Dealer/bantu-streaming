import '../../../core/app_export.dart';
import 'language_item_model.dart';

/// This class defines the variables used in the [language_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LanguageModel {
  Rx<List<LanguageItemModel>> languageItemList = Rx([
    LanguageItemModel(
        england: ImageConstant.imgBg.obs,
        england1: "England".obs,
        england2: ImageConstant.imgCheckmarkWhiteA700.obs)
  ]);
}
