import '../../../core/app_export.dart';

/// This class is used in the [language_item_widget] screen.
class LanguageItemModel {
  LanguageItemModel({
    this.england,
    this.england1,
    this.england2,
    this.id,
  }) {
    england = england ?? Rx(ImageConstant.imgBg);
    england1 = england1 ?? Rx("England");
    england2 = england2 ?? Rx(ImageConstant.imgCheckmarkWhiteA700);
    id = id ?? Rx("");
  }

  Rx<String>? england;

  Rx<String>? england1;

  Rx<String>? england2;

  Rx<String>? id;
}
