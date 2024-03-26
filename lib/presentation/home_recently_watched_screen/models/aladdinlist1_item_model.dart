import '../../../core/app_export.dart';

/// This class is used in the [aladdinlist1_item_widget] screen.
class Aladdinlist1ItemModel {
  Aladdinlist1ItemModel({
    this.aladdin,
    this.id,
  }) {
    aladdin = aladdin ?? Rx(ImageConstant.imgAladdin);
    id = id ?? Rx("");
  }

  Rx<String>? aladdin;

  Rx<String>? id;
}
