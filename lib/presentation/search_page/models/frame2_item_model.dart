import '../../../core/app_export.dart';

/// This class is used in the [frame2_item_widget] screen.
class Frame2ItemModel {
  Frame2ItemModel({
    this.rectangle,
    this.id,
  }) {
    rectangle = rectangle ?? Rx(ImageConstant.imgRectangle12082);
    id = id ?? Rx("");
  }

  Rx<String>? rectangle;

  Rx<String>? id;
}
