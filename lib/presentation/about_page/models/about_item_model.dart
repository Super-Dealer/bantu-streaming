import '../../../core/app_export.dart';

/// This class is used in the [about_item_widget] screen.
class AboutItemModel {
  AboutItemModel({
    this.menaMassoud,
    this.menaMassoud1,
    this.id,
  }) {
    menaMassoud = menaMassoud ?? Rx(ImageConstant.imgRectangle12050);
    menaMassoud1 = menaMassoud1 ?? Rx("Mena Massoud");
    id = id ?? Rx("");
  }

  Rx<String>? menaMassoud;

  Rx<String>? menaMassoud1;

  Rx<String>? id;
}
