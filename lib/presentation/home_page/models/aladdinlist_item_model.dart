import '../../../core/app_export.dart';

/// This class is used in the [aladdinlist_item_widget] screen.
class AladdinlistItemModel {
  AladdinlistItemModel({
    this.aladdin,
    this.id,
  }) {
    aladdin = aladdin ?? Rx(ImageConstant.imgAladdin2);
    id = id ?? Rx("");
  }

  Rx<String>? aladdin;

  Rx<String>? id;
}
